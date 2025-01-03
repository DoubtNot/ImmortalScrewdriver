using System.Collections;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class ObjectFloatToPlayer : MonoBehaviour
{
    public Transform player; // Reference to the player
    public float speed = 0.5f; // Initial speed of floating towards the player
    public float speedIncrement = 0.1f; // How much to increase the speed with each bullet collision
    public float bounceFactor = 0.7f; // How much the object bounces off walls
    public float distanceToStop = 0.1f; // Minimum distance before stopping
    public float audioPlayDistance = 10f; // Distance within which to play the audio clip
    public AudioClip audioClip; // Audio clip to play
    private AudioSource audioSource; // Audio source component
    private Rigidbody rb;
    private bool isFollowing = true; // Whether the object is currently following the player
    private Coroutine stopMovementCoroutine; // Reference to the active coroutine

    void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.isKinematic = false; // Ensure physics handles collisions

        // Add and configure AudioSource component
        audioSource = gameObject.AddComponent<AudioSource>();
        audioSource.clip = audioClip; // Assign the audio clip to the AudioSource
        audioSource.playOnAwake = false; // Prevent the audio from playing immediately
    }

    void Update()
    {
        if (!isFollowing) return; // Skip movement logic if not following the target

        // Calculate the direction to the player
        Vector3 directionToPlayer = player.position - transform.position;

        // Create a rotation that looks in the direction of the target
        Quaternion targetRotation = Quaternion.LookRotation(directionToPlayer);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, targetRotation, Time.deltaTime * 100f); // Adjust rotation speed as needed

        // If the object is further than the stopping distance, move towards the player
        if (directionToPlayer.magnitude > distanceToStop)
        {
            Vector3 moveDirection = directionToPlayer.normalized * speed;
            rb.velocity = moveDirection;
        }
        else
        {
            rb.velocity = Vector3.zero; // Stop moving when close to the player
        }

        // Check distance to the player for audio playback
        if (directionToPlayer.magnitude < audioPlayDistance && !audioSource.isPlaying)
        {
            audioSource.Play(); // Play the audio clip if within distance and not already playing
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        // Check if the collided object has the tag "Bullet"
        if (collision.gameObject.CompareTag("Bullet") && stopMovementCoroutine == null)
        {
            // Start the coroutine to stop following the target temporarily
            stopMovementCoroutine = StartCoroutine(StopMovementTemporarily(5f));
            speed += speedIncrement; // Increase speed by a small amount with each collision
        }
    }

    private IEnumerator StopMovementTemporarily(float duration)
    {
        isFollowing = false; // Stop following the player
        yield return new WaitForSeconds(duration);
        isFollowing = true; // Resume following the player after the delay
        stopMovementCoroutine = null; // Reset coroutine reference, allowing new collisions to start it again
    }

    public void ResetSpeed()
    {
        speed = 0.5f; // Reset speed to its initial value
    }
}
