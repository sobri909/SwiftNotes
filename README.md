# SwiftNotes

A super simple wrapper around [NotificationCenter](https://developer.apple.com/documentation/foundation/nsnotificationcenter).

## Examples

#### UIApplication Notifications

```swift
when(.UIApplicationDidBecomeActive) { _ in
    // do stuff
}
```

#### UIKeyboard Notifications

```swift
when(.UIKeyboardDidShow) { note in
    // do stuff 
}
```

#### Custom Notifications

```swift
// define the custom event name
extension NSNotification.Name {
    static let somethingHappened = Notification.Name("somethingHappened")
}

// send the event
NotificationCenter.default.post(Notification(name: .somethingHappened))

// respond to the event
when(.somethingHappened) { _ in
    // do stuff
}
```

