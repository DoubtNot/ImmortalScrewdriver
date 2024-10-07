using UnityEngine;
using UnityEngine.InputSystem;

public class HandOnWallTrigger : MonoBehaviour
{
    public FlyVR flyScript; // Reference to the FlyVR script
    public InputActionReference gripInputAction; // Reference to the hand's grip input (left or right)
    public GameObject objectToActivate; // The GameObject to activate/deactivate
    public MonoBehaviour scriptToToggle; // The script component to enable/disable

    private bool isGrabbing = false; // Tracks if the grip button is pressed
    private bool isCollidingWithGrabObject = false; // Tracks if the hand is colliding with a "Grab" object
    private bool hasEnteredTrigger = false; // Tracks if the hand has entered the trigger

    void Update()
    {
        // Check the status of the grip button
        isGrabbing = gripInputAction.action.ReadValue<float>() > 0.1f;

        // If the hand is colliding with a "Grab" object and the grip button is pressed
        if (isCollidingWithGrabObject && isGrabbing)
        {
            flyScript.StopMovement(); // Stop movement when grabbing
            objectToActivate.SetActive(true); // Activate the object
            scriptToToggle.enabled = false; // Disable the specified script
            hasEnteredTrigger = true; // Set the trigger entry flag
        }
        else if (isCollidingWithGrabObject && !isGrabbing && hasEnteredTrigger) // Check if the trigger has been entered
        {
            // Calculate the direction from the hand to the head when grip is released
            Vector3 headPosition = Camera.main.transform.position; // Assuming the camera is the head
            Vector3 handPosition = transform.position; // Get the position of the hand
            Vector3 directionToHead = headPosition - handPosition; // Calculate the direction from the hand to the head

            flyScript.ResumeMovementWithDirection(directionToHead); // Move in that direction
            objectToActivate.SetActive(false); // Deactivate the object
            scriptToToggle.enabled = true; // Enable the specified script
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        // Check if the hand collides with an object tagged "Grab"
        if (other.CompareTag("Grab"))
        {
            isCollidingWithGrabObject = true; // Set the flag when the hand enters the "Grab" object
            objectToActivate.SetActive(true); // Activate the object when colliding
        }
    }

    private void OnTriggerExit(Collider other)
    {
        // Reset the flag when the hand exits the "Grab" object
        if (other.CompareTag("Grab"))
        {
            isCollidingWithGrabObject = false; // Reset the flag
            hasEnteredTrigger = false; // Reset the trigger entry flag
            objectToActivate.SetActive(false); // Deactivate the object when not colliding
        }
    }
}
