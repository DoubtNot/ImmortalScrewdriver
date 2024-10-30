using TMPro;
using UnityEngine;
using System.IO;

[System.Serializable]
public class PlaytimeData
{
    public float totalPlaytime; // Total playtime in seconds
}

public class TextResponder : MonoBehaviour
{
    public TextMeshProUGUI inputTextField;  // Reference to the input text field
    public TextMeshProUGUI outputTextField; // Reference to the output text field

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
    }

    private void OnApplicationQuit()
    {
        SavePlaytime(); // Save the total playtime when quitting
    }

    // Call this method, e.g., on a button click to evaluate the input text
    public void RespondToInput()
    {
        Debug.Log("RespondToInput() function called."); // Debug log to check function call

        outputTextField.text = "test test test";

        string inputText = inputTextField.text.Trim(); // Read and trim input text

        // Evaluate the input text and output a response
        switch (inputText.ToLower())
        {
            case "frog":
                outputTextField.text = @"
                  @..@
                 (----)
                ( >__< )
                 ^^  ^^";
                break;

            case "hello":
                outputTextField.text = "Hi there! How can I help you today?";
                break;

            // CMDS basic commands
            case "cmds":
                outputTextField.text = "C:Users/Owner>CMDS \n" +
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
                outputTextField.text = "C:Users/Owner>HELP \n" +
                    "<MISSING COMMAND NAME> \n\n" +
                    "For a list of available command names type 'CMDS'";
                break;

            case "path":
                outputTextField.text = "C:Users/Owner>PATH \n" +
                    "<MISSING ROOM NAME> \n\n" +
                    "To use the PATH command type 'PATH [room-name]' \n\n" +
                    "For a list of available room names type ROOMLIST";
                break;

            case "recover":
                outputTextField.text = "C:Users/Owner>RECOVER \n" +
                    "<MISSING FILE NAME> \n\n" +
                    "To use the RECOVER command type 'RECOVER [file-name]' \n\n" +
                    "For more information regarding the RECOVER command type 'HELP RECOVER'";
                break;

            case "roomlist":
                outputTextField.text = "C:/Users/Owner>ROOMLIST \n" +
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
                outputTextField.text = "C:Users/Owner>START \n" +
                    "This command cannot be called in this location";
                break;

            case "tasklist":
                outputTextField.text = "C:Users/Owner>TASKLIST \n" +
                    "Repair Escape Pod\n" +
                    "\t-Steering Rod\n" +
                    "\tSteering Wheel\n" +
                    "\tDoor Handle\n" +
                    "\tKeyboard\n" +
                    "\tPower Cell * 2\n" +
                    "Recover Files * 0"; // Change the number for however many videos can be recovered
                break;

            case "time":
                // Calculate elapsed time since the game started
                float elapsedTime = Time.time - startTime + totalPlaytime; // Add total playtime from previous sessions
                int minutes = Mathf.FloorToInt(elapsedTime / 60);
                int seconds = Mathf.FloorToInt(elapsedTime % 60);
                outputTextField.text = $"C:Users/Owner>TIME \n" +
                                       $"Play Time: {minutes}m {seconds}s";
                break;

            case "quit":
                Application.Quit(); // Add a save function here
                break;

            // HELP commands 
            case "help cmds":
                outputTextField.text = "C:/Users/Owner>HELP CMDS \n" +
                    "CMDS \t\tThis command will display a list of the most commonly used command names along with a brief description for each";
                break;

            case "help path":
                outputTextField.text = "C:/Users/Owner>HELP PATH \n" +
                    "PATH \t\tThis command requires a target room name \n\n" +
                    "To use this command type 'PATH [room-name]' \n\n" +
                    "For a list of available room names type ROOMLIST";
                break;

            case "help recover":
                outputTextField.text = "C:Users/Owner>HELP RECOVER \n" +
                    "";
                break;

            case "help roomlist":
                outputTextField.text = "C:Users/Owner>HELP ROOMLIST \n" +
                    "";
                break;

            case "help start":
                outputTextField.text = "C:Users/Owner>HELP START \n" +
                    "";
                break;

            case "help tasklist":
                outputTextField.text = "C:Users/Owner>HELP TASKLIST \n" +
                    "";
                break;

            case "help time":
                outputTextField.text = "C:Users/Owner>HELP TIME \n" +
                    "";
                break;

            case "help quit":
                outputTextField.text = "C:Users/Owner>HELP QUIT \n" +
                    "";
                break;

            // Add more cases as needed

            // ERROR message
            default:
                outputTextField.text = "C:/Users/Owner>ERROR \n" +
                    "The provided input is not recognized as an internal command, operable path or recovered file";
                break;
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
