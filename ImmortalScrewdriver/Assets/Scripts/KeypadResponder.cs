using TMPro;
using UnityEngine;

public class KeypadResponder : MonoBehaviour
{
    public TextMeshProUGUI inputTextField;  // Reference to the input text field
    public Animator animator;               // Reference to the Animator component
    public string accessCode = "1234";      // The code required to trigger the animation (set in the Inspector)
    public string animationName = "YourAnimationName"; // The name of the animation to play (set in the Inspector)

    // Call this method, e.g., on a button click to evaluate the input text
    public void RespondToInput()
    {
        string inputText = inputTextField.text.Trim(); // Read and trim input text

        // Check if the input matches the access code
        if (inputText == accessCode)
        {
            Debug.Log("Access Granted.");
            if (animator != null && !string.IsNullOrEmpty(animationName))
            {
                animator.Play(animationName); // Play the specified animation
            }
            else
            {
                Debug.LogWarning("Animator not assigned or animation name is empty.");
            }
        }
        else
        {
            Debug.Log("Access Denied.");
        }

        // Clear the input text field after processing
        inputTextField.text = "";
    }

    // Clears the input text field
    public void DeleteInput()
    {
        inputTextField.text = "";
    }
}
