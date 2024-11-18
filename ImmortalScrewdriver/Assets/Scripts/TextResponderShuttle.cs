using TMPro;
using UnityEngine;
using System.Collections.Generic;

public class TextResponderShuttle : MonoBehaviour
{
    public TextMeshProUGUI inputTextField;  // Reference to the input text field
    public TextMeshProUGUI outputTextField; // Reference to the output text field

    [Header("List of Triggerable Objects")]
    public List<GameObject> triggerObjects; // List of required objects

    private HashSet<GameObject> triggeredObjects = new HashSet<GameObject>();
    public bool allTriggered { get; private set; } = false; // Boolean to track if all are triggered

    private void OnTriggerEnter(Collider other)
    {
        if (triggerObjects.Contains(other.gameObject))
        {
            triggeredObjects.Add(other.gameObject);

            if (triggeredObjects.Count == triggerObjects.Count)
            {
                allTriggered = true;
                Debug.Log("All objects have triggered!");
            }
        }
    }

    // Call this method, e.g., on a button click to evaluate the input text
    public void RespondToInput()
    {
        string inputText = inputTextField.text.Trim().ToLower(); // Read and trim input text

        // Evaluate the input text and output a response
        switch (inputText)
        {
            case "cmds":
                outputTextField.text = "C:/Users/Owner>CMDS \n" +
                    "";
                break;

            case "launch":
                if (allTriggered)
                {
                    outputTextField.text = "C:/Users/Owner>LAUNCH \n" +
                        "Launch sequence initiated, please stand by...";
                }
                else
                {
                    outputTextField.text = "C:/Users/Owner>LAUNCH \n" +
                        "Repairs needed before launch sequence can begin.";
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
}
