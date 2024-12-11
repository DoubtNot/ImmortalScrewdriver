using TMPro;
using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TextResponderShuttle : MonoBehaviour
{
    public TextMeshProUGUI inputTextField;  // Reference to the input text field
    public TextMeshProUGUI outputTextField; // Reference to the output text field

    public Animator animator;               // Reference to the Animator component
    public string doorClose = "YourAnimationName";
    public string doorOpen = "YourAnimationName";

    public AudioSource audioSource;
    public AudioClip doorAudio;

    public GameObject launchObj;
    public GameObject screwdriver;

    [Header("List of Triggerable Objects")]
    public List<GameObject> triggerObjects; // List of required objects

    private HashSet<GameObject> triggeredObjects = new HashSet<GameObject>();
    public bool allTriggered { get; private set; } = false; // Boolean to track if all are triggered

    public Death deathScript; // Reference to the Death script for triggering death

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
                outputTextField.text = "C:/Users/Owner>CMDS \n\n" +
                    "CMDS \t\tDisplays a list of available commands \n" +
                    "LAUNCH \t\tStarts autopilot for the shuttle.\n" +
                    "SYSTEM \t\tDisplays repairs needed if any are found."; 
                break;

            case "launch":
                if (allTriggered)
                {
                    outputTextField.text = "C:/Users/Owner>LAUNCH \n\n" +
                        "Launch sequence initiated, please stand by...";

                    if (animator != null && !string.IsNullOrEmpty(doorClose))
                    {
                        animator.Play(doorClose); // Play the specified animation
                    }

                    launchObj.SetActive(true);
                    audioSource.PlayOneShot(doorAudio); // Play the audio clip once

                    screwdriver.SetActive(false);

                    // Start the delayed action
                    StartCoroutine(DelayedExperienceUpload());
                }
                else
                {
                    outputTextField.text = "C:/Users/Owner>LAUNCH \n" +
                        "Repairs needed before launch sequence can begin.";
                }
                break;

            case "gold":
                outputTextField.text = "C:/Users/Owner>GOLD\n\n" +
                        "Launch sequence initiated, please stand by...";

                if (animator != null && !string.IsNullOrEmpty(doorClose))
                {
                    animator.Play(doorClose); // Play the specified animation
                }

                launchObj.SetActive(true);
                audioSource.PlayOneShot(doorAudio); // Play the audio clip once

                screwdriver.SetActive(false);

                // Start the delayed action
                StartCoroutine(DelayedExperienceUpload());
                break;

            case "system":
                outputTextField.text = "C:/Users/Owner>SYSTEM \n\n" +
                    "Repair the following to restore functionality. Note that this list does not update automatically\n\n" +
                    "\t-Steering Rod\n" +
                    "\t-Steering Wheel\n" +
                    "\t-Door Handle\n" +
                    "\t-Light\n" +
                    "\t-Power Cell * 2\n";
                break;

            default:
                outputTextField.text = "C:/Users/Owner>ERROR \n" +
                    "The provided input is not recognized as an internal command, operable path, or recovered file.";
                break;
        }

        // Clear the input text field after processing
        inputTextField.text = "";
    }

    private IEnumerator DelayedExperienceUpload()
    {
        // Update the output text field immediately
        outputTextField.text += "\n\nEXPERIENCE UPLOADED... TERMINATING CURRENT SESSION";
        audioSource.PlayOneShot(doorAudio); // Play the audio clip once

        // Wait for 5 seconds before performing the rest of the actions
        yield return new WaitForSeconds(20);

        // Play the door open animation
        if (!string.IsNullOrEmpty(doorOpen))
        {
            animator.Play(doorOpen);
        }

        // Trigger the death command
        if (deathScript != null)
        {
            deathScript.ExecuteDeath();
        }
        else
        {
            Debug.LogWarning("Death script reference is not assigned.");
        }

        // Deactivate the launch object
        launchObj.SetActive(false);
    }
}
