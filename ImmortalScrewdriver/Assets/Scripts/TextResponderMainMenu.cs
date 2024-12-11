using TMPro;
using UnityEngine;
using System.Collections;
using UnityEngine.Video;
using System.Collections.Generic;

public class TextResponderMainMenu : MonoBehaviour
{
    public TextMeshProUGUI inputTextField;      // Reference to the input text field
    public TextMeshProUGUI outputTextField;     // Reference to the output text field
    public Transform playerTransform;           // Reference to the player's Transform
    public GameObject startPositionPlayer;      // Reference to the player's start position GameObject
    public GameObject lightObject;              // Reference to the light GameObject to activate
    public GameObject startPositionScrewdriver; // Reference to the start position GameObject for the floating object
    public Death deathScript;                   // Reference to the Death script for controlling object activation
    public ObjectFloatToPlayer floatObject;     // Reference to the ObjectFloatToPlayer script for resetting speed


    // Video playing references
    public GameObject videoScreen; // GameObject where videos will be played
    public List<VideoClip> videoClips; // List of VideoClips to be played

    private VideoPlayer videoPlayer; // VideoPlayer component
    private MeshRenderer videoScreenRenderer; // MeshRenderer for video screen

    private void Start()
    {
        // Initialize the VideoPlayer and MeshRenderer
        videoPlayer = videoScreen.GetComponent<VideoPlayer>();
        if (videoPlayer == null)
        {
            videoPlayer = videoScreen.AddComponent<VideoPlayer>();
        }

        videoPlayer.playOnAwake = false;

        videoScreenRenderer = videoScreen.GetComponent<MeshRenderer>();
        if (videoScreenRenderer != null)
        {
            videoScreenRenderer.enabled = false;
        }

        videoPlayer.loopPointReached += OnVideoFinished;
    }

    // Call this method, e.g., on a button click to evaluate the input text
    public void RespondToInput()
    {
        string inputText = inputTextField.text.Trim().ToLower(); // Read and trim input text

        // Evaluate the input text and output a response
        switch (inputText)
        {
            case "cmds":
                StopVideo();
                outputTextField.text = "C:Users/Owner>CMDS \n\n" +
                    "CMDS \t\tDisplays a list of available commands \n" +
                    "CREDITS \t\tDisplays the development team and contributors \n" +
                    "START \t\tInitializes a new experimental build \n" +
                    "WELCOME \tPlays the instructional video for new employees \n" +
                    "QUIT \t\tEnds and saves current session";
                break;


            case "credits":
                StopVideo();
                outputTextField.text = "C:/Users/Owner>CREDITS \n\n" +
                    "DoubtNot\t\t\t Models/ Textures/ Codes/ Voice/ Story/ Animation/ Music\n\n" +
                    "Noelle Anderson\t Voice\n\n" +
                    "Hunter Busby\t\t Story\n\n" +
                    "Josh Rockwood\t\t Modeled Astronaut Suit";
                break;

            case "start":
                StopVideo();
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

            case "welcome":
                PlayVideo();
                outputTextField.text = "C:/Users/Owner>WELCOME \n\n" +
                    "Now playing video...";
                break;

            case "quit":
                Application.Quit(); // Add a save function here if needed
                break;

            default:
                StopVideo();
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

        // Clear the output text field to make the UI go blank after completion
        outputTextField.text = "";
    }

    private void PlayVideo()
    {
        if (videoClips.Count > 0)
        {
            videoPlayer.clip = videoClips[0]; // Play the first video in the list (you can modify this logic to play a specific video)

            // Enable the video screen renderer
            if (videoScreenRenderer != null)
            {
                videoScreenRenderer.enabled = true;
            }

            videoScreen.SetActive(true); // Ensure the video screen is visible

            videoPlayer.Play();
        }
    }

    private void StopVideo()
    {
        // Check if the video player is active and playing
        if (videoPlayer != null && videoPlayer.isPlaying)
        {
            videoPlayer.Stop(); // Stop the video playback
        }

        // Disable the video screen renderer
        if (videoScreenRenderer != null)
        {
            videoScreenRenderer.enabled = false;
        }

        // Ensure the video screen is no longer visible
        if (videoScreen != null)
        {
            videoScreen.SetActive(false);
        }
    }


    private void OnVideoFinished(VideoPlayer source)
    {
        // Disable the MeshRenderer when the video finishes
        MeshRenderer meshRenderer = videoScreen.GetComponent<MeshRenderer>();
        if (meshRenderer != null)
        {
            meshRenderer.enabled = false;
        }

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
