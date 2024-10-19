using UnityEngine;

public class CassetteButtons : MonoBehaviour
{
    // Enum to represent button types
    public enum ButtonType
    {
        Play,
        Stop,
        Reverse,
        FastForward
    }

    // Reference to the button type associated with this script
    public ButtonType buttonType;

    // Maximum rotation angle
    private const float maxRotationAngle = 20f;

    // Current rotation angle
    private float currentRotationAngle = 0f;

    // Reference to all buttons for resetting
    public CassetteButtons[] otherButtons;

    // OnTriggerEnter is called when the Collider enters the trigger
    private void OnTriggerEnter(Collider other)
    {
        // Check if the colliding object has the tag "PointerFinger"
        if (other.CompareTag("PointerFinger"))
        {
            // Rotate the button based on its type if the limit is not reached
            RotateButton();
        }
    }

    // Method to rotate the button
    private void RotateButton()
    {
        // Check if the current rotation is less than the max angle
        if (currentRotationAngle < maxRotationAngle)
        {
            // Rotate the button on the x-axis by 20 degrees
            float rotationAmount = Mathf.Min(20f, maxRotationAngle - currentRotationAngle);
            transform.Rotate(rotationAmount, 0, 0);

            // Update the current rotation angle
            currentRotationAngle += rotationAmount;

            // Reset all other buttons' rotations
            ResetOtherButtons();
        }
    }

    // Method to reset the button's rotation
    public void ResetRotation()
    {
        transform.localRotation = Quaternion.Euler(0, 0, 0);
        currentRotationAngle = 0f;
    }

    // Method to reset all other buttons
    private void ResetOtherButtons()
    {
        foreach (CassetteButtons button in otherButtons)
        {
            if (button != this) // Avoid resetting itself
            {
                button.ResetRotation();
            }
        }
    }
}
