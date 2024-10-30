using TMPro;
using UnityEngine;

public class Backspace : MonoBehaviour
{
    public TextMeshProUGUI textField; // Reference to the text field you want to modify

    // Call this method to delete the last character in the text field
    public void DeleteLastCharacter()
    {
        if (textField == null || string.IsNullOrEmpty(textField.text))
        {
            return;
        }

        // Remove the last character
        textField.text = textField.text.Substring(0, textField.text.Length - 1);
    }
}
