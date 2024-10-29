using UnityEngine;
using TMPro;

public class AddLetterOnTrigger : MonoBehaviour
{
    [Tooltip("The letter to add when the trigger is activated.")]
    public string letterToAdd;

    [Tooltip("The TMP_Text field to display the updated string.")]
    public TMP_Text uiTextField;

    private void OnTriggerEnter(Collider other)
    {
        if (!string.IsNullOrEmpty(letterToAdd) && uiTextField != null)
        {
            // Append the new letter to the existing text
            uiTextField.text += letterToAdd;
        }
    }
}
