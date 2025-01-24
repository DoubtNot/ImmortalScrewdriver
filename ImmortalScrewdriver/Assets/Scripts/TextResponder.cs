using TMPro;
using UnityEngine;
using System.IO;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine.Video;

[System.Serializable]
public class PlaytimeData
{
    public float totalPlaytime; // Total playtime in seconds
}

public class TextResponder : MonoBehaviour
{
    public TextMeshProUGUI inputTextField;  // Reference to the input text field
    public TextMeshProUGUI outputTextField; // Reference to the output text field

    public GameObject videoScreen; // GameObject where videos will be played
    public List<VideoClip> videoClips; // List of MP4 videos

    // References to specific GameObjects to activate
    public GameObject PathBeds;
    public GameObject PathEscapePod;
    public GameObject PathEastDome;
    public GameObject PathEye;
    public GameObject PathLounge;
    public GameObject PathLab;
    public GameObject PathKitchen;
    public GameObject PathMedBay;
    public GameObject PathStorage;
    public GameObject PathWestDome;


    private Dictionary<string, GameObject> pathGameObjects; // Dictionary to map commands to GameObjects
    private Dictionary<string, VideoClip> videoCommands; // Dictionary to map commands to VideoClips


    private float startTime; // Store the start time of the game
    private float totalPlaytime; // Store the total playtime
    private string playtimeFilePath; // Path to save the playtime data

    private VideoPlayer videoPlayer; // VideoPlayer component to play videos
    private MeshRenderer videoScreenRenderer; // MeshRenderer for the video screen



    private void Start()
    {
        // Initialize the file path for playtime data
        playtimeFilePath = Path.Combine(Application.persistentDataPath, "playtimeData.json");

        // Load previous playtime data if it exists
        LoadPlaytime();

        // Initialize the start time when the game starts
        startTime = Time.time;

        // Initialize the VideoPlayer component
        videoPlayer = videoScreen.GetComponent<VideoPlayer>();
        if (videoPlayer == null)
        {
            videoPlayer = videoScreen.AddComponent<VideoPlayer>();
        }

        videoPlayer.playOnAwake = false;

        // Initialize the MeshRenderer and disable it initially
        videoScreenRenderer = videoScreen.GetComponent<MeshRenderer>();
        if (videoScreenRenderer != null)
        {
            videoScreenRenderer.enabled = false;
        }

        // Attach event to disable the MeshRenderer when the video finishes
        videoPlayer.loopPointReached += OnVideoFinished;



        // Initialize the dictionary with command strings and GameObjects
        pathGameObjects = new Dictionary<string, GameObject>
        {
            { "path beds", PathBeds },
            { "path escape pod", PathEscapePod},
            { "path east dome", PathEastDome},
            { "path eye", PathEye},
            { "path lounge", PathLounge },
            { "path lab", PathLab },
            { "path kitchen", PathKitchen },
            { "path med bay", PathMedBay },
            { "path storage", PathStorage },
            { "path west dome", PathWestDome }
        };

        // Initialize the dictionary with command strings and VideoClips
        videoCommands = new Dictionary<string, VideoClip>
        {
            { "recover intro", videoClips[0] }, // Map command to the first video in the list
            { "recover first", videoClips[1] },
        };
    }

    private void OnApplicationQuit()
    {
        SavePlaytime(); // Save the total playtime when quitting
    }

    // Call this method, e.g., on a button click to evaluate the input text
    public void RespondToInput()
    {
        string inputText = inputTextField.text.Trim().ToLower(); // Read and trim input text

        // Deactivate all path GameObjects
        foreach (var go in pathGameObjects.Values)
        {
            go.SetActive(false);
        }

        // Check if the input matches a path command and activate the specific GameObject
        if (pathGameObjects.TryGetValue(inputText, out GameObject activeGameObject))
        {
            activeGameObject.SetActive(true);
            outputTextField.text = $"Activated {inputText}";
        }
        else if (videoCommands.TryGetValue(inputText, out VideoClip videoClip)) // Check if input matches a video command
        {
            PlayVideo(videoClip);
            outputTextField.text = $"C:Users/Owner>RECOVER {inputText}";
        }
        else
        {
            // Evaluate the input text and output a response
            switch (inputText)
            {
                
                // CMDS basic commands



                case "cmds":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>CMDS \n\n" +
                        "CMDS \t\tDisplays a list of available commands \n" +
                        "DATA \t\tDislays employee identification/information \n" +
                        "EMPLOYEES \tDisplays a list of all employee last names on record\n" +
                        "HELP \t\tProvides general instructions for using commands \n" +
                        "PATH \t\tDisplays or sets a search path for existing rooms \n" +
                        "RECOVER \tRecovers data from a bad or defective disk \n" +
                        "ROOMLIST \tDisplays a list of the common rooms \n" +
                        "TASKLIST \t\tDisplays a list of all tasks \n" +
                        "TIME \t\tDisplays the system time \n" +
                        "QUIT \t\tEnds and saves current session";
                    break;

                case "data":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>DATA \n\n" +
                        "<MISSING LAST NAME> \n\n" +
                        "To use the DATA command type 'DATA [employee-last-name]' and hit Enter \n\n" +
                        "For a list of every employee last name on record type 'EMPLOYEELIST' and hit Enter";
                    break;

                case "employees":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>EMPLOYEELIST \n\n" +
                        "-Delano\t\t- Keller\t\t- Ortiz\t\t-Pruitt\t\t- Sterk\t\t- Vaughn";
                    break;

                case "help":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>HELP \n\n" +
                        "The HELP command provides additional information/instructions on the specified command \n\n" +
                        "To use the HELP command type 'HELP [command-name]' and hit Enter";
                    break;

                case "path":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>PATH \n\n" +
                        "<MISSING ROOM NAME> \n\n" +
                        "To use the PATH command type 'PATH [room-name]' \n\n" +
                        "For a list of available room names type ROOMLIST and hit Enter";
                    break;

                case "recover":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>RECOVER \n\n" +
                        "<MISSING FILE NAME> \n\n" +
                        "To use the RECOVER command type 'RECOVER [file-name]' \n\n" +
                        "For more information regarding the RECOVER command type 'HELP RECOVER' and hit Enter";
                    break;

                case "roomlist":
                    StopVideo();
                    outputTextField.text = "C:/Users/Owner>ROOMLIST \n\n" +
                        "BEDS \n" +
                        "EAST DOME \n" +
                        "ESCAPE POD \n" +
                        "KITCHEN \n" +
                        "LAB \n" +
                        "LOUNGE \n" +
                        "MED BAY \n" +
                        "STORAGE \n" +
                        "WEST DOME";
                    break;

                case "start":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>START \n\n" +
                        "This command cannot be called in this location";
                    break;

                case "tasklist":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>TASKLIST \n\n" +
                        "Repair Escape Pod\n" +
                        "\t-Steering Rod\n" +
                        "\t-Steering Wheel\n" +
                        "\t-Door Handle\n" +
                        "\t-Light\n" +
                        "\t-Power Cell * 2\n\n" +
                        "Rec0vr FiIeZ * 1"; // Change the number for however many files can be recovered
                    break;

                case "time":
                    StopVideo();
                    // Calculate elapsed time since the game started
                    float elapsedTime = Time.time - startTime + totalPlaytime; // Add total playtime from previous sessions

                    int days = Mathf.FloorToInt(elapsedTime / 86400); // 1 day = 86400 seconds
                    elapsedTime %= 86400; // Remaining time after calculating days

                    int hours = Mathf.FloorToInt(elapsedTime / 3600); // 1 hour = 3600 seconds
                    elapsedTime %= 3600; // Remaining time after calculating hours

                    int minutes = Mathf.FloorToInt(elapsedTime / 60); // 1 minute = 60 seconds
                    int seconds = Mathf.FloorToInt(elapsedTime % 60); // Remaining seconds

                    outputTextField.text = $"C:Users/Owner>TIME \n\n" +
                                           $"Play Time: {days}d {hours}h {minutes}m {seconds}s";
                    break;


                case "quit":
                    StopVideo();
                    Application.Quit(); // Add a save function here if needed
                    break;




                // HELP commands




                case "help cmds":
                    StopVideo();
                    outputTextField.text = "C:/Users/Owner>HELP CMDS \n\n" +
                        "CMDS \t\tThis command will display a list of the most commonly used command names along with a brief description for each";
                    break;

                case "help data":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>HELP DATA \n\n" +
                        "The Data command provides additional information on a specified employee \n\n" +
                        "To use the DATA command type 'DATA [employee-last-name]' \n\n" +
                        "For a list of every employee last name on record type 'EMPLOYEELIST' and hit Enter";
                    break;

                case "help path":
                    StopVideo();
                    outputTextField.text = "C:/Users/Owner>HELP PATH \n\n" +
                        "PATH \t\tThis command requires a target room name \n\n" +
                        "To use this command type 'PATH [room-name]' \n\n" +
                        "For a list of available room names type ROOMLIST and hit Enter";
                    break;

                case "help recover":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>HELP RECOVER \n\n" +
                        "To use the RECOVER command type 'RECOVER [file-name]' \n\n" +
                        "Currently there are [01] files that may be recovered";
                    break;

                case "help roomlist":
                    outputTextField.text = "C:Users/Owner>HELP ROOMLIST \n\n" +
                        "ROOMLIST \t\tUsing this command will display a list of all known room names in the space station";
                    break;

                case "help start":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>HELP START \n\n" +
                        "START \t\tRequires the subject to be in the start location to use";
                    break;

                case "help tasklist":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>HELP TASKLIST \n\n" +
                        "TASKLIST \t\tDisplays a list of objectives to complete in order to escape the space station";
                    break;

                case "help time":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>HELP TIME \n\n" +
                        "TIME \t\tShows the total duration of currrent experiment";
                    break;

                case "help quit":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>HELP QUIT \n\n" +
                        "QUIT \t\tSaves pertinant information of current itteration and closes the application";
                    break;



                // DATA messages


                case "data delano":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>DATA DELANO \n\n" +
                        "- Name: Marcus Delano\n" +
                        "- Age: 31 \n" +
                        "- Height: 6'1'' \n" +
                        "- Weight: 170 lbs \n" +
                        "- Eye Color: Hazel \n" +
                        "- Hair Color: Brown \n" +
                        "- Job Description: Maintenance \n" +
                        "- Length of Employment: 11 years";
                    break;

                case "data keller":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>DATA KELLER \n\n" +
                        "- Name: Dr Robert James Keller\n" +
                        "- Age: 53 \n" +
                        "- Height: 5'9'' \n" +
                        "- Weight: 165 lbs \n" +
                        "- Eye Color: Blue \n" +
                        "- Hair Color: Light Brown \n" +
                        "- Job Description: Doctor \n" +
                        "- Length of Employment: 25 years";
                    break;

                case "data ortiz":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>DATA ORTIZ \n\n" +
                        "- Name: Renata Ortiz\n" +
                        "- Age: 26 \n" +
                        "- Height: 5'4'' \n" +
                        "- Weight: 130 lbs \n" +
                        "- Eye Color: Hazel \n" +
                        "- Hair Color: Brown \n" +
                        "- Job Description: Nurse \n" +
                        "- Length of Employment: 6 Months";
                    break;

                case "data pruitt":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>DATA PRUITT \n\n" +
                        "- Name: Ethan Pruitt\n" +
                        "- Age: 24 \n" +
                        "- Height: 5'10'' \n" +
                        "- Weight: 145 lbs \n" +
                        "- Eye Color: Blue \n" +
                        "- Hair Color: Brown \n" +
                        "- Job Description: Construction \n" +
                        "- Length of Employment: 3 Months";
                    break;

                case "data sterk":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>DATA STERK \n\n" +
                        "- Name: Kaika Sterk\n" +
                        "- Age: 29 \n" +
                        "- Height: 5'5'' \n" +
                        "- Weight: 135 lbs \n" +
                        "- Eye Color: Red \n" +
                        "- Hair Color: Black \n" +
                        "- Job Description: Sanitation \n" +
                        "- Length of Employment: 4 Years";
                    break;

                case "data vaughn":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>DATA VAUGHN \n\n" +
                        "- Name: Tessa Vaughn\n" +
                        "- Age: 34 \n" +
                        "- Height: 5'3'' \n" +
                        "- Weight: 125 lbs \n" +
                        "- Eye Color: Brown \n" +
                        "- Hair Color: Blonde \n" +
                        "- Job Description: First Responder \n" +
                        "- Length of Employment: 7 Years";
                    break;



                // Icident Reports



                case "french":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>FRENCH \n\n" +
                        "Location: Site Gamma-12, Orbital Construction Zone \n" +
                        "Incident Overview: At approximately 14:37 station time, Construction Worker Ethan Pruitt mishandled a Class-II " +
                        "Dematerializer while attempting to clear debris from the primary build zone, resulting in the vaporization of " +
                        "his left arm.\n" +
                        "Response: Tessa Vaughn stabilized and transported the patient back to the Home Station. Upon arrival, " +
                        "Dr Keller assessed the damage and initiated regrowth protocols. A new arm was successfully grafted, with full " +
                        "mobility and sensory function expected within 72 hours. Pruitt will undergo mandatory retraining before " +
                        "returning to work.\n" +
                        "Filed By: Tessa Vaughn\n" +
                        "Job Title: First Responder";
                    break;


                case "layers":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>LAYERS \n\n" +
                        "Location: Home Station \n" +
                        "Incident Overview: At approximately 21:06 station time, a critical systems alert was triggered in the Home Station " +
                        "which compromised communications across all subsystems. The failure was due to a recursive feedback loop that overtaxed " +
                        "the station's processing units. This resulted in intermittent power loss in several non-critical sectors.\n" +
                        "Response: Maintenance Technician Marcus Delano identified that an unauthorized user had bypassed security protocols " +
                        "and deployed malware within the core systems. Delano isolated and purged the affected systems. Full functionality was " +
                        "restored by 23:15. All dependent systems were brought back online after a sandbox integrity test.\n" +
                        "Filed By: Marcus Delano\n" +
                        "Job Title: Maintenance";
                    break;




                // Silly messages


                case "frog":
                    StopVideo();
                    outputTextField.text = @"
                      @..@
                     (----)
                    ( >__< )
                     ^^  ^^";
                    break;

                case "cat":
                    StopVideo();
                    outputTextField.text = @"
                     /\_/\  
                    ( o.o )
                     > ^ <";
                    break;

                case "dog":
                    StopVideo();
                    outputTextField.text = @"
                         / \__
                        (    @\____
                        /         O
                       /   (_____/
                      /_____/   U";
                    break;

                case "fish":
                    StopVideo();
                    outputTextField.text = @"
                       ><(((('>
                      ><(((('>";
                    break;

                case "duck":
                    StopVideo();
                    outputTextField.text = @"
                          __
                    <(o )___
                     (  /     \
                      `'\_(' ')>";
                    break;

                case "bunny":
                    StopVideo();
                    outputTextField.text = @"
                     (\(\ 
                    ( -.-)
                    o_('')('')";
                    break;

                case "elephant":
                    StopVideo();
                    outputTextField.text = @"
                      /  \~~~/  \
                     (    ..     )
                      \        /
                       '-(  )----'
                          \ \";
                    break;

                case "sixty nine":
                    StopVideo();
                    outputTextField.text = "C:Users/Owner>SIXTY NINE \n\n" +
                        "Heh nice!";
                    break;

                case "test":
                    outputTextField.text = "C:Users/Owner>FRAMETEST \n\nLoading FrameTest scene...";
                    SceneManager.LoadScene("FrameTest"); // Load the FrameTest scene
                    break;

                // Error Message
                default:

                    StopVideo();
                    outputTextField.text = "C:/Users/Owner>ERROR \n\n" +
                        "The provided input is not recognized as an internal command, operable path or recovered file.";
                    break;
            }
        }





        // Clear the input text field after processing
        inputTextField.text = "";
    }

    private void PlayVideo(VideoClip clip)
    {
        videoPlayer.clip = clip;
        videoPlayer.Play();

        // Enable the video screen renderer
        if (videoScreenRenderer != null)
        {
            videoScreenRenderer.enabled = true;
        }

        videoScreen.SetActive(true); // Ensure the video screen is visible
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

    private void SavePlaytime()
    {
        PlaytimeData playtimeData = new PlaytimeData
        {
            totalPlaytime = totalPlaytime + (Time.time - startTime) // Update total playtime with the current session
        };

        string json = JsonUtility.ToJson(playtimeData, true);
        File.WriteAllText(playtimeFilePath, json);
        Debug.Log("Playtime saved.");
    }

    private void LoadPlaytime()
    {
        if (File.Exists(playtimeFilePath))
        {
            string json = File.ReadAllText(playtimeFilePath);
            PlaytimeData playtimeData = JsonUtility.FromJson<PlaytimeData>(json);
            totalPlaytime = playtimeData.totalPlaytime; // Load the total playtime from the file
            Debug.Log("Playtime loaded.");
        }
        else
        {
            totalPlaytime = 0; // Initialize to 0 if no file exists
        }
    }
}
