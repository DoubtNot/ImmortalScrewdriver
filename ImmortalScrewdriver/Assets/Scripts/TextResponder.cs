using TMPro;
using UnityEngine;
using System.IO;
using System.Collections.Generic;
using UnityEngine.SceneManagement;

[System.Serializable]
public class PlaytimeData
{
    public float totalPlaytime; // Total playtime in seconds
}

public class TextResponder : MonoBehaviour
{
    public TextMeshProUGUI inputTextField;  // Reference to the input text field
    public TextMeshProUGUI outputTextField; // Reference to the output text field

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

    private float startTime; // Store the start time of the game
    private float totalPlaytime; // Store the total playtime
    private string playtimeFilePath; // Path to save the playtime data

    private void Start()
    {
        // Initialize the file path for playtime data
        playtimeFilePath = Path.Combine(Application.persistentDataPath, "playtimeData.json");

        // Load previous playtime data if it exists
        LoadPlaytime();

        // Initialize the start time when the game starts
        startTime = Time.time;

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
        else
        {
            // Evaluate the input text and output a response
            switch (inputText)
            {
                
                // CMDS basic commands



                case "cmds":
                    outputTextField.text = "C:Users/Owner>CMDS \n\n" +
                        "CMDS \t\tDisplays a list of available commands \n" +
                        "HELP \t\tProvides general instructions for using commands \n" +
                        "PATH \t\tDisplays or sets a search path for existing rooms \n" +
                        "RECOVER \tRecovers data from a bad or defective disk \n" +
                        "ROOMLIST \tDisplays a list of the common rooms \n" +
                        "START \t\tStarts a new session for scene.initialescape.apk \n" +
                        "TASKLIST \t\tDisplays a list of all tasks \n" +
                        "TIME \t\tDisplays the system time \n" +
                        "QUIT \t\tEnds and saves current session";
                    break;

                case "help":
                    outputTextField.text = "C:Users/Owner>HELP \n\n" +
                        "The HELP command provides additional information/instructions on the specified command \n\n" +
                        "To use the HELP command type 'HELP [command-name]' and hit Enter";
                    break;

                case "path":
                    outputTextField.text = "C:Users/Owner>PATH \n\n" +
                        "<MISSING ROOM NAME> \n\n" +
                        "To use the PATH command type 'PATH [room-name]' \n\n" +
                        "For a list of available room names type ROOMLIST and hit Enter";
                    break;

                case "recover":
                    outputTextField.text = "C:Users/Owner>RECOVER \n\n" +
                        "<MISSING FILE NAME> \n\n" +
                        "To use the RECOVER command type 'RECOVER [file-name]' \n\n" +
                        "For more information regarding the RECOVER command type 'HELP RECOVER' and hit Enter";
                    break;

                case "roomlist":
                    outputTextField.text = "C:/Users/Owner>ROOMLIST \n\n" +
                        "BEDS \n" +
                        "EAST DOME \n" +
                        "ESCAPE POD \n" +
                        "KITCHEN \n" +
                        "LABORATORY \n" +
                        "LOUNGE \n" +
                        "MEDICAL BAY \n" +
                        "STORAGE \n" +
                        "WEST DOME";
                    break;

                case "start":
                    outputTextField.text = "C:Users/Owner>START \n\n" +
                        "This command cannot be called in this location";
                    break;

                case "tasklist":
                    outputTextField.text = "C:Users/Owner>TASKLIST \n\n" +
                        "Repair Escape Pod\n" +
                        "\t-Steering Rod\n" +
                        "\t-Steering Wheel\n" +
                        "\t-Door Handle\n" +
                        "\t-Keyboard\n" +
                        "\t-Power Cell * 2\n" +
                        "Rec0vr FiIeZ * 0"; // Change the number for however many files can be recovered
                    break;

                case "time":
                    // Calculate elapsed time since the game started
                    float elapsedTime = Time.time - startTime + totalPlaytime; // Add total playtime from previous sessions
                    int minutes = Mathf.FloorToInt(elapsedTime / 60);
                    int seconds = Mathf.FloorToInt(elapsedTime % 60);
                    outputTextField.text = $"C:Users/Owner>TIME \n\n" +
                                           $"Play Time: {minutes}m {seconds}s";
                    break;

                case "quit":
                    Application.Quit(); // Add a save function here if needed
                    break;




                // HELP commands




                case "help cmds":
                    outputTextField.text = "C:/Users/Owner>HELP CMDS \n\n" +
                        "CMDS \t\tThis command will display a list of the most commonly used command names along with a brief description for each";
                    break;

                case "help path":
                    outputTextField.text = "C:/Users/Owner>HELP PATH \n\n" +
                        "PATH \t\tThis command requires a target room name \n\n" +
                        "To use this command type 'PATH [room-name]' \n\n" +
                        "For a list of available room names type ROOMLIST and hit Enter";
                    break;

                case "help recover":
                    outputTextField.text = "C:Users/Owner>HELP RECOVER \n\n" +
                        "To use the RECOVER command type 'RECOVER [file-name]' \n\n" +
                        "Currently there are no known files to be recovered";
                    break;

                case "help roomlist":
                    outputTextField.text = "C:Users/Owner>HELP ROOMLIST \n\n" +
                        "ROOMLIST \t\tUsing this command will display a list of all known room names in the space station";
                    break;

                case "help start":
                    outputTextField.text = "C:Users/Owner>HELP START \n\n" +
                        "START \t\tRequires the subject to be in the start location to use";
                    break;

                case "help tasklist":
                    outputTextField.text = "C:Users/Owner>HELP TASKLIST \n\n" +
                        "TASKLIST \t\tDisplays a list of objectives to complete in order to escape the space station";
                    break;

                case "help time":
                    outputTextField.text = "C:Users/Owner>HELP TIME \n\n" +
                        "TIME \t\tShows the total duration of currrent experiment";
                    break;

                case "help quit":
                    outputTextField.text = "C:Users/Owner>HELP QUIT \n\n" +
                        "QUIT \t\tSaves pertinant information of current itteration and closes the application";
                    break;


                // Silly messages


                case "frog":
                    outputTextField.text = @"
                      @..@
                     (----)
                    ( >__< )
                     ^^  ^^";
                    break;

                case "cat":
                    outputTextField.text = @"
                     /\_/\  
                    ( o.o )
                     > ^ <";
                    break;

                case "dog":
                    outputTextField.text = @"
                         / \__
                        (    @\____
                        /         O
                       /   (_____/
                      /_____/   U";
                    break;

                case "fish":
                    outputTextField.text = @"
                       ><(((('>
                      ><(((('>";
                    break;

                case "duck":
                    outputTextField.text = @"
                          __
                    <(o )___
                     (  /     \
                      `'\_(' ')>";
                    break;

                case "bunny":
                    outputTextField.text = @"
                     (\(\ 
                    ( -.-)
                    o_('')('')";
                    break;

                case "elephant":
                    outputTextField.text = @"
                      /  \~~~/  \
                     (    ..     )
                      \        /
                       '-(  )----'
                          \ \";
                    break;

                case "sixty nine":
                    outputTextField.text = "C:Users/Owner>SIXTY NINE \n\n" +
                        "Heh nice!";
                    break;

                case "test":
                    outputTextField.text = "C:Users/Owner>FRAMETEST \n\nLoading FrameTest scene...";
                    SceneManager.LoadScene("FrameTest"); // Load the FrameTest scene
                    break;

                // Error Message
                default:
                    outputTextField.text = "C:/Users/Owner>ERROR \n\n" +
                        "The provided input is not recognized as an internal command, operable path or recovered file.";
                    break;
            }
        }





        // Clear the input text field after processing
        inputTextField.text = "";
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
