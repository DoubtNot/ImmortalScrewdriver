using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SetTransformOnStart : MonoBehaviour
{
    public Transform newPosition;


    private void Start()
    {
        transform.position = newPosition.position;
        transform.rotation = newPosition.rotation;
    }
}
