using UnityEngine;

public class NewCassetteParent : MonoBehaviour
{
    // Public variable to define the new location after the collision
    public Transform newLocation;

    // Reference to the CassetteButtons script (can be assigned in Inspector)
    public CassetteButtons[] buttonsToReset;

    // OnTriggerEnter is called when the Collider enters the trigger
    private void OnTriggerEnter(Collider other)
    {
        // Check if the colliding object has the tag "Cassette"
        if (other.CompareTag("Cassette"))
        {
            // Disable the trigger collider for this object
            GetComponent<Collider>().enabled = false;

            // Set the "Cassette" object as a child of the object this script is attached to
            other.transform.SetParent(transform);

            // Relocate the "Cassette" object to the world position of the new location
            other.transform.position = newLocation.position;

            // Match the world rotation of the new location
            other.transform.rotation = newLocation.rotation;

            // Check if the colliding object has a Rigidbody
            Rigidbody rb = other.GetComponent<Rigidbody>();
            if (rb != null)
            {
                // Set the Rigidbody's isKinematic to true
                rb.isKinematic = true;
            }

            // Reset all buttons' rotations
            ResetButtonRotations();
        }
    }

    // Method to reset the rotations of all buttons
    private void ResetButtonRotations()
    {
        foreach (CassetteButtons button in buttonsToReset)
        {
            if (button != null)
            {
                button.ResetRotation();
            }
        }
    }
}
