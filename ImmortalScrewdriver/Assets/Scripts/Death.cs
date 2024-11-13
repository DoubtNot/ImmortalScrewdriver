using UnityEngine;

public class Death : MonoBehaviour
{
    public Transform playerTransform;           // Reference to the player's Transform
    public GameObject targetObject;             // Reference to the target GameObject
    public Animator animator;                   // Reference to the Animator component for playing the animation
    public string animationName;                // Name of the animation to play, set in the Inspector
    public TextResponderMainMenu mainMenu;      // Reference to the TextResponderMainMenu for controlling light

    // Call this method to instantly move the player to the target's position and rotation
    public void ExecuteDeath()
    {
        if (playerTransform != null && targetObject != null)
        {
            playerTransform.position = targetObject.transform.position;      // Set the player's position to the target's position
            playerTransform.rotation = targetObject.transform.rotation;      // Set the player's rotation to the target's rotation
        }
        else
        {
            Debug.LogWarning("Player Transform or Target Object is not assigned.");
        }

        // Play the specified animation if the Animator and animation name are assigned
        if (animator != null && !string.IsNullOrEmpty(animationName))
        {
            animator.Play(animationName);  // Play the animation by name
        }
        else
        {
            Debug.LogWarning("Animator is not assigned or animation name is empty.");
        }

        // Turn off the light using the main menu script
        if (mainMenu != null)
        {
            mainMenu.TurnOffLight();
        }
        else
        {
            Debug.LogWarning("MainMenu reference is not assigned.");
        }
    }
}
