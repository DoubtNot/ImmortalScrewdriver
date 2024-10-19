using UnityEngine;

public class ResetParent : MonoBehaviour
{
    // Method to reset the object's parent to itself (make it a root object)
    public void ResetToSelfParent()
    {
        // Set the parent of this transform to null
        transform.SetParent(null);
    }

}
