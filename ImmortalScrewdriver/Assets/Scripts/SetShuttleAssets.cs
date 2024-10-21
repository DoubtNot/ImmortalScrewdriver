using UnityEngine;

public class SetShuttleAssets : MonoBehaviour
{
    // Public variable to define the tag to check for
    public string filterTag = "";

    // Public variable to define the new transform to match
    public Transform newTransform;

    // OnTriggerEnter is called when the Collider enters the trigger
    private void OnTriggerEnter(Collider other)
    {
        // Check if the colliding object has the specified tag
        if (other.CompareTag(filterTag))
        {
            // Relocate the object to the world position of the new transform
            other.transform.position = newTransform.position;

            // Match the world rotation of the new transform
            other.transform.rotation = newTransform.rotation;

            // Check if the colliding object has a Rigidbody
            Rigidbody rb = other.GetComponent<Rigidbody>();
            if (rb != null)
            {
                // Set the Rigidbody's isKinematic to true
                rb.isKinematic = true;
            }

            // Disable the collider of the object that triggered this
            Collider otherCollider = other.GetComponent<Collider>();
            if (otherCollider != null)
            {
                otherCollider.enabled = false;
            }
        }
    }
}
