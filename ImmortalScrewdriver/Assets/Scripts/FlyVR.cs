using UnityEngine;
using UnityEngine.InputSystem;

[RequireComponent(typeof(Rigidbody))] // Ensure the Rigidbody component is on the player
public class FlyVR : MonoBehaviour
{
    public GameObject leftHand;
    public GameObject rightHand;

    public InputActionReference leftFlyInputAction;
    public InputActionReference rightFlyInputAction;
    public InputActionReference leftSecondaryButtonAction;
    public InputActionReference rightSecondaryButtonAction;

    public float flyingSpeed = 0.8f;
    public float nonFlyingSpeed = 0.5f;
    public float decelerationFactor = 0.9f;
    public float bounceFactor = 0.5f; // How much the player bounces off on collision

    private bool isLeftFlying = false;
    private bool isRightFlying = false;
    private bool isDecelerating = false;

    private bool isMovementStopped = false; // Flag for freezing movement
    private Vector3 lastLeftFlyingDirection;
    private Vector3 lastRightFlyingDirection;
    private Vector3 moveDirection;

    private Rigidbody rb;

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.isKinematic = false; // Let Rigidbody handle collisions

        leftFlyInputAction.action.Enable();
        rightFlyInputAction.action.Enable();
        leftSecondaryButtonAction.action.Enable();
        rightSecondaryButtonAction.action.Enable();
    }

    void Update()
    {
        HandleFlying(leftFlyInputAction, leftHand, ref isLeftFlying, ref lastLeftFlyingDirection);
        HandleFlying(rightFlyInputAction, rightHand, ref isRightFlying, ref lastRightFlyingDirection);

        if (leftSecondaryButtonAction.action.triggered || rightSecondaryButtonAction.action.triggered)
        {
            isDecelerating = true;
        }

        if ((leftSecondaryButtonAction.action.phase == InputActionPhase.Canceled && leftSecondaryButtonAction.action.triggered) ||
            (rightSecondaryButtonAction.action.phase == InputActionPhase.Canceled && rightSecondaryButtonAction.action.triggered))
        {
            isDecelerating = false;
        }

        if (isDecelerating)
        {
            Decelerate();
        }

        Move();
    }

    void HandleFlying(InputActionReference flyInputAction, GameObject hand, ref bool isFlying, ref Vector3 lastFlyingDirection)
    {
        if (flyInputAction.action.ReadValue<float>() > 0.1f && !isMovementStopped)
        {
            isFlying = true;

            // Get the forward direction of the hand
            Vector3 flyDirection = hand.transform.forward;

            // Normalize the direction to maintain consistent speed
            flyDirection.Normalize();

            // Transition the movement direction smoothly to the new direction
            moveDirection = Vector3.Slerp(moveDirection, flyDirection * flyingSpeed, Time.deltaTime * 5f); // Adjust the speed of transition here

            // Store the flying direction
            lastFlyingDirection = flyDirection;
        }
        else
        {
            isFlying = false;
        }
    }


    void Move()
    {
        // Stop all movement if the player has grabbed the wall
        if (isMovementStopped)
        {
            rb.velocity = Vector3.zero; // Zero velocity when movement is stopped
            return;
        }

        // Apply velocity to the Rigidbody for movement if not decelerating or stopped
        if (!isDecelerating)
        {
            rb.velocity = moveDirection;
        }
        else
        {
            rb.velocity = moveDirection.normalized * nonFlyingSpeed;
        }
    }

    void Decelerate()
    {
        if (moveDirection.magnitude > 0)
        {
            // Slow down the move direction if not zero
            moveDirection *= decelerationFactor;

            // Check if the magnitude is small enough to stop
            if (moveDirection.magnitude < 0.01f)
            {
                moveDirection = Vector3.zero; // Set direction to zero when it's almost stopped
                isDecelerating = false; // Stop deceleration process
            }
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        // Check for objects with which the player collides
        if (collision.gameObject.CompareTag("Grab")) // Make sure objects you want to bounce off are tagged
        {
            // Only allow the player's body to bounce off if they are not grabbing
            if (!isMovementStopped)
            {
                // Reflect the movement direction based on the collision normal
                moveDirection = Vector3.Reflect(moveDirection, collision.contacts[0].normal) * bounceFactor;
            }
        }
    }

    public void StopMovement() // Method to stop movement, callable from HandTrigger
    {
        isMovementStopped = true;
        rb.velocity = Vector3.zero; // Stop the velocity
    }

    public void ResumeMovement() // Method to resume movement, callable from HandTrigger
    {
        isMovementStopped = false;
    }

    public void ResumeMovementWithDirection(Vector3 direction) // New method to resume movement with calculated direction
    {
        isMovementStopped = false;
        moveDirection = direction.normalized * flyingSpeed; // Set the move direction based on input
    }
}
