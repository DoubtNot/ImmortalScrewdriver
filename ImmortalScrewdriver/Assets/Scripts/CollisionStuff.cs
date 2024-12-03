using System.Collections;
using UnityEngine;
using UnityEngine.Events;

public class CollisionStuff : MonoEventsBehaviour
{
    public GameAction collisionEnterAction, collisionEnterRepeatAction, collisionEnterEndAction, collisionExitAction;
    public UnityEvent collisionEnterEvent, collisionEnterRepeatEvent, collisionEnterEndEvent, collisionExitEvent;
    private WaitForSeconds waitForCollisionEnterObj, waitForCollisionRepeatObj;
    public float collisionHoldTime = 0.01f, repeatHoldTime = 0.01f, exitHoldTime = 0.01f;
    public bool canRepeat;
    public int repeatTimes = 10;

    // New field to set tag in the inspector
    public string filterTag = "";

    protected override void Awake()
    {
        base.Awake();
        waitForCollisionEnterObj = new WaitForSeconds(collisionHoldTime);
        waitForCollisionRepeatObj = new WaitForSeconds(repeatHoldTime);
    }

    private IEnumerator OnCollisionEnter(Collision collision)
    {
        // Check if a tag is specified, and if so, filter by that tag
        if (!string.IsNullOrEmpty(filterTag) && !collision.gameObject.CompareTag(filterTag))
        {
            yield break; // Exit if the object's tag doesn't match the specified tag
        }

        yield return waitForCollisionEnterObj;
        collisionEnterEvent.Invoke();
        if (collisionEnterAction != null) collisionEnterAction.RaiseNoArgs();

        if (canRepeat)
        {
            var i = 0;
            while (i < repeatTimes)
            {
                yield return waitForCollisionEnterObj;
                i++;
                collisionEnterRepeatEvent.Invoke();
                if (collisionEnterRepeatAction != null) collisionEnterRepeatAction.RaiseNoArgs();
            }
        }

        yield return waitForCollisionRepeatObj;
        collisionEnterEndEvent.Invoke();
        if (collisionEnterEndAction != null) collisionEnterEndAction.RaiseNoArgs();
    }

    private void OnCollisionExit(Collision collision)
    {
        // Check if a tag is specified, and if so, filter by that tag
        if (!string.IsNullOrEmpty(filterTag) && !collision.gameObject.CompareTag(filterTag))
        {
            return; // Exit if the object's tag doesn't match the specified tag
        }

        collisionExitEvent.Invoke();
        if (collisionExitAction != null) collisionExitAction.RaiseNoArgs();
    }
}
