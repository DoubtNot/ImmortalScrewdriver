using TMPro;
using UnityEngine;
using System.Collections;

public class TextResponderMainMenu : MonoBehaviour
{
    public TextMeshProUGUI inputTextField;  // Reference to the input text field
    public TextMeshProUGUI outputTextField; // Reference to the output text field
    public Transform playerTransform;       // Reference to the player's Transform
    public GameObject targetObject;         // Reference to the target GameObject

    // Call this method, e.g., on a button click to evaluate the input text
    public void RespondToInput()
    {
        string inputText = inputTextField.text.Trim().ToLower(); // Read and trim input text

        // Evaluate the input text and output a response
        switch (inputText)
        {
            case "start":
                outputTextField.text = "C:/Users/Owner>START \n" +
                    "Initializing experiment, please wait...";
                StartCoroutine(MovePlayerAfterDelay(3f)); // Move the player instead of loading a scene
                break;

            default:
                outputTextField.text = "C:/Users/Owner>ERROR \n" +
                    "The provided input is not recognized as an internal command, operable path, or recovered file.";
                break;
        }

        // Clear the input text field after processing
        inputTextField.text = "";
    }

    private IEnumerator MovePlayerAfterDelay(float delay)
    {
        yield return new WaitForSeconds(delay);
        if (playerTransform != null && targetObject != null)
        {
            playerTransform.position = targetObject.transform.position;      // Set the player's position to the target's position
            playerTransform.rotation = targetObject.transform.rotation;      // Set the player's rotation to the target's rotation
        }
        else
        {
            Debug.LogWarning("Player Transform or Target Object is not assigned.");
        }
    }
}
