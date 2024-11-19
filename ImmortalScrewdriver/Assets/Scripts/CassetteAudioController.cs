using System.Collections.Generic;
using UnityEngine;

public class CassettePlayer : MonoBehaviour
{
    // Reference to the currently inserted cassette
    private AudioSource currentCassetteAudio;

    private void OnTriggerEnter(Collider other)
    {
        // Check if the object entering the trigger is a cassette
        if (other.CompareTag("Cassette"))
        {
            // Get the AudioSource component from the cassette
            AudioSource cassetteAudio = other.GetComponent<AudioSource>();

            if (cassetteAudio != null)
            {
                // Pause the currently playing cassette, if any
                if (currentCassetteAudio != null && currentCassetteAudio.isPlaying)
                {
                    currentCassetteAudio.Pause();
                }

                // Assign the new cassette's audio
                currentCassetteAudio = cassetteAudio;
            }
            else
            {
                Debug.LogWarning("Cassette object does not have an AudioSource component.");
            }
        }
    }

    private void OnTriggerExit(Collider other)
    {
        // Pause the audio if the exiting cassette is the current cassette
        if (other.CompareTag("Cassette") && currentCassetteAudio != null && other.GetComponent<AudioSource>() == currentCassetteAudio)
        {
            StopAudio();
            currentCassetteAudio = null; // Clear the reference
        }
    }

    // Manually controlled functions

    public void PlayAudio()
    {
        // Check if there is a child object with the tag "Cassette"
        Transform cassetteTransform = transform.FindChildWithTag("Cassette");

        if (cassetteTransform == null)
        {
            StopAudio();
            currentCassetteAudio = null;
            return;
        }

        // Get the AudioSource from the child cassette object
        currentCassetteAudio = cassetteTransform.GetComponent<AudioSource>();

        if (currentCassetteAudio != null)
        {
            if (currentCassetteAudio.isPlaying)
            {
                // Already playing, reset to normal speed
                currentCassetteAudio.pitch = 1.0f;
            }
            else if (currentCassetteAudio.time > 0f)
            {
                // Resume from paused state
                currentCassetteAudio.pitch = 1.0f; // Normal speed
                currentCassetteAudio.UnPause();
            }
            else
            {
                // Start playback from the beginning
                currentCassetteAudio.pitch = 1.0f; // Normal speed
                currentCassetteAudio.Play();
            }
        }
        else
        {
            Debug.LogWarning("No AudioSource found on the cassette object.");
        }
    }

    public void StopAudio()
    {
        if (currentCassetteAudio != null)
        {
            currentCassetteAudio.Pause(); // Pause instead of stopping
        }
        else
        {
            Debug.LogWarning("No cassette is currently in the player.");
        }
    }

    public void RewindAudio()
    {
        if (currentCassetteAudio != null && currentCassetteAudio.isPlaying)
        {
            currentCassetteAudio.pitch = -1.5f; // Adjust rewind speed as needed
        }
        else
        {
            Debug.LogWarning("No cassette is playing to rewind.");
        }
    }

    public void FastForwardAudio()
    {
        if (currentCassetteAudio != null && currentCassetteAudio.isPlaying)
        {
            currentCassetteAudio.pitch = 1.5f; // Adjust fast-forward speed as needed
        }
        else
        {
            Debug.LogWarning("No cassette is playing to fast forward.");
        }
    }

    public void ResetPlaybackSpeed()
    {
        if (currentCassetteAudio != null)
        {
            currentCassetteAudio.pitch = 1.0f; // Reset to normal speed
        }
        else
        {
            Debug.LogWarning("No cassette is currently in the player.");
        }
    }
}

public static class TransformExtensions
{
    // Extension method to find a child with a specific tag
    public static Transform FindChildWithTag(this Transform parent, string tag)
    {
        foreach (Transform child in parent)
        {
            if (child.CompareTag(tag))
            {
                return child;
            }
        }
        return null;
    }
}
