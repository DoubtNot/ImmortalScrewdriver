using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using System.Collections;

public class TextResponderMainMenu : MonoBehaviour
{
    public TextMeshProUGUI inputTextField;  // Reference to the input text field
    public TextMeshProUGUI outputTextField; // Reference to the output text field

    // Call this method, e.g., on a button click to evaluate the input text
    public void RespondToInput()
    {
        string inputText = inputTextField.text.Trim().ToLower(); // Read and trim input text

        // Evaluate the input text and output a response
        switch (inputText)
        {
            case "start":
                outputTextField.text = "C:Users/Owner>START \n" +
                    "Initializing experiment, please wait...";
                StartCoroutine(LoadSceneAfterDelay(3f, "MainScene")); // Replace "YourSceneName" with the actual scene name
                break;

            default:
                outputTextField.text = "C:/Users/Owner>ERROR \n" +
                    "The provided input is not recognized as an internal command, operable path, or recovered file.";
                break;
        }

        // Clear the input text field after processing
        inputTextField.text = "";
    }

    private IEnumerator LoadSceneAfterDelay(float delay, string sceneName)
    {
        yield return new WaitForSeconds(delay);
        SceneManager.LoadScene(sceneName);
    }
}
