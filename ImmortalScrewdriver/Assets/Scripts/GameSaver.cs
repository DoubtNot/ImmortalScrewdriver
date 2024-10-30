using System.Collections.Generic;
using System.IO;
using UnityEngine;

// Class to hold individual object's data
[System.Serializable]
public class ObjectData
{
    public string objectName; // Name of the object
    public Vector3 position;   // Position of the object
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

    public void SaveGame()
    {
        SaveData saveData = new SaveData();

        foreach (GameObject obj in objectsToSave)
        {
            ObjectData data = new ObjectData
            {
                objectName = obj.name,
                position = obj.transform.position
            };
            saveData.objectDataList.Add(data);
        }

        string json = JsonUtility.ToJson(saveData, true);
        File.WriteAllText(saveFilePath, json);
        Debug.Log("Game saved.");
    }

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
                }
            }
            Debug.Log("Game loaded.");
        }
    }
}
