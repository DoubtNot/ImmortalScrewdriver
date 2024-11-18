using TMPro;
using UnityEngine;
using System.Collections;

public class TextResponderMainMenu : MonoBehaviour
{
    public TextMeshProUGUI inputTextField;      // Reference to the input text field
    public TextMeshProUGUI outputTextField;     // Reference to the output text field
    public Transform playerTransform;           // Reference to the player's Transform
    public GameObject startPositionPlayer;      // Reference to the player's start position GameObject
    public GameObject lightObject;              // Reference to the light GameObject to activate
    public GameObject blaster;                  // Reference to the barrels GameObject
    public GameObject blasterCassette;
    public GameObject startPositionScrewdriver; // Reference to the start position GameObject for the floating object
    public Death deathScript;                   // Reference to the Death script for controlling object activation
    public ObjectFloatToPlayer floatObject;     // Reference to the ObjectFloatToPlayer script for resetting speed

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

                // Enable the object through the Death script
                if (deathScript != null)
                {
                    deathScript.EnableObject();
                }
                else
                {
                    Debug.LogWarning("Death script reference is not assigned.");
                }

                // Reset the floating object's position, rotation, and speed
                if (floatObject != null && startPositionScrewdriver != null)
                {
                    floatObject.transform.position = startPositionScrewdriver.transform.position;
                    floatObject.transform.rotation = startPositionScrewdriver.transform.rotation;
                    floatObject.ResetSpeed();
                }
                else
                {
                    Debug.LogWarning("ObjectFloatToPlayer or start position reference is not assigned.");
                }
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

        playerTransform.position = startPositionPlayer.transform.position;      // Set the player's position to the start position
        playerTransform.rotation = startPositionPlayer.transform.rotation;      // Set the player's rotation to the start position

        lightObject.SetActive(true);
        blaster.SetActive(true);
        blasterCassette.SetActive(true);


        // Clear the output text field to make the UI go blank after completion
        outputTextField.text = "";
    }

    // Public method to turn off the light, accessible by other scripts
    public void TurnOffLight()
    {
        if (lightObject != null)
        {
            lightObject.SetActive(false);
        }
        else
        {
            Debug.LogWarning("Light object is not assigned.");
        }
    }
}
