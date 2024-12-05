using System.Collections.Generic;
using System.IO;
using UnityEngine;

// Class to hold individual object's data
[System.Serializable]
public class ObjectData
{
    public string objectName;     // Name of the object
    public Vector3 position;      // Position of the object
    public Quaternion rotation;   // Rotation of the object
    public List<string> parentPath; // Path of parent objects in the hierarchy
}

// Class to hold the list of object data
[System.Serializable]
public class SaveData
{
    public List<ObjectData> objectDataList = new List<ObjectData>(); // List of object data
}

public class GameSaver : MonoBehaviour
{
    public List<GameObject> objectsToSave; // List of objects to save
    private string saveFilePath;

    private void Start()
    {
        saveFilePath = Path.Combine(Application.persistentDataPath, "saveData.json");
        LoadGame();
    }

    private void OnApplicationQuit()
    {
        SaveGame();
    }

    // Save the game data
    public void SaveGame()
    {
        SaveData saveData = new SaveData();

        foreach (GameObject obj in objectsToSave)
        {
            ObjectData data = new ObjectData
            {
                objectName = obj.name,
                position = obj.transform.position,
                rotation = obj.transform.rotation, // Save the object's rotation
                parentPath = new List<string>()    // Initialize the parent path
            };

            // Get the entire parent path
            Transform currentTransform = obj.transform;
            while (currentTransform.parent != null)
            {
                data.parentPath.Insert(0, currentTransform.parent.name); // Insert parent at the beginning
                currentTransform = currentTransform.parent; // Move to the next parent in the hierarchy
            }

            saveData.objectDataList.Add(data);
        }

        // Convert save data to JSON and write it to a file
        string json = JsonUtility.ToJson(saveData, true);
        File.WriteAllText(saveFilePath, json);
        Debug.Log("Game saved.");
    }

    // Load the game data
    public void LoadGame()
    {
        if (File.Exists(saveFilePath))
        {
            string json = File.ReadAllText(saveFilePath);
            SaveData saveData = JsonUtility.FromJson<SaveData>(json);

            foreach (ObjectData data in saveData.objectDataList)
            {
                GameObject obj = GameObject.Find(data.objectName);
                if (obj != null)
                {
                    obj.transform.position = data.position;
                    obj.transform.rotation = data.rotation; // Restore the object's rotation

                    // Rebuild the parent-child relationship using the parent path
                    Transform parentTransform = null;
                    foreach (string parentName in data.parentPath)
                    {
                        GameObject parentObj = GameObject.Find(parentName);
                        if (parentObj != null)
                        {
                            parentTransform = parentObj.transform;
                        }
                        else
                        {
                            Debug.LogWarning($"Parent object '{parentName}' not found.");
                        }
                    }

                    // If we found a valid parent, set the object's parent
                    if (parentTransform != null)
                    {
                        obj.transform.SetParent(parentTransform, true); // The second parameter keeps world position
                    }
                }
            }

            Debug.Log("Game loaded.");
        }
        else
        {
            Debug.LogWarning("Save file not found.");
        }
    }
}
