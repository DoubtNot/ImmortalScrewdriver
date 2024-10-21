using UnityEngine;

public class NewCassetteParent : MonoBehaviour
{
    // Public variable to define the new location after the collision
    public Transform newLocation;

    // Reference to the CassetteButtons script (can be assigned in Inspector)
    public CassetteButtons[] buttonsToReset;

    // Update is called once per frame
    private void Update()
    {
        // Check if there is a child with the tag "Cassette"
        bool hasCassetteChild = false;

        for (int i = 0; i < transform.childCount; i++)
        {
            if (transform.GetChild(i).CompareTag("Cassette"))
            {
                hasCassetteChild = true;
                break; // Exit the loop if a cassette child is found
            }
        }

        // Enable or disable the collider based on the presence of a cassette child
        GetComponent<Collider>().enabled = !hasCassetteChild;
    }

    // OnTriggerEnter is called when the Collider enters the trigger
    private void OnTriggerEnter(Collider other)
    {
        // Check if the colliding object has the tag "Cassette"
        if (other.CompareTag("Cassette"))
        {
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
