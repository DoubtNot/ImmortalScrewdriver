using UnityEngine;

public class ChargeLight : MonoBehaviour
{
    public float spinSpeed = 20f; // Speed of free spinning along the Y-axis
    public float spinIncreaseAmount = 100f; // Amount to increase spin speed on collision
    public float spinDecayRate = 25f; // Amount to reduce spin speed every second
    public float maxSpinSpeed = 1000f; // Maximum spin speed
    public float minSpinSpeed = 20f; // Minimum spin speed
    public Light spotlight; // Reference to the Light component
    public float maxLightRange = 60f; // Maximum range of the spotlight
    public float minLightRange = 10f; // Minimum range of the spotlight
    public float rangeChangeSpeed = 5f; // Speed of light range change

    private Rigidbody rb;

    void Start()
    {
        // Get the Rigidbody component
        rb = GetComponent<Rigidbody>();
        rb.maxAngularVelocity = Mathf.Infinity; // Ensure there's no limit to angular velocity
    }

    void Update()
    {
        // Spin freely along the Y-axis
        transform.Rotate(0, spinSpeed * Time.deltaTime, 0);

        // Gradually decrease the spin speed over time
        if (spinSpeed > minSpinSpeed)
        {
            spinSpeed -= spinDecayRate * Time.deltaTime;

            // Clamp the spin speed to ensure it doesn't go below the minimum
            if (spinSpeed < minSpinSpeed)
            {
                spinSpeed = minSpinSpeed;
            }
        }

        // Calculate the target light range based on the current spin speed
        float normalizedSpinSpeed = (spinSpeed - minSpinSpeed) / (maxSpinSpeed - minSpinSpeed);
        float targetLightRange = Mathf.Lerp(minLightRange, maxLightRange, normalizedSpinSpeed);

        // Smoothly adjust the light range towards the target
        if (spotlight != null)
        {
            spotlight.range = Mathf.Lerp(spotlight.range, targetLightRange, rangeChangeSpeed * Time.deltaTime);
        }
    }

    // Detect collision
    void OnCollisionEnter(Collision collision)
    {
        // Check if the collided object has the tag "PointerFinger"
        if (collision.gameObject.CompareTag("PointerFinger"))
        {
            // Increase the spin speed on collision
            spinSpeed += spinIncreaseAmount;

            // Clamp the spin speed to ensure it doesn't exceed the maximum
            if (spinSpeed > maxSpinSpeed)
            {
                spinSpeed = maxSpinSpeed;
            }
        }
    }
}
