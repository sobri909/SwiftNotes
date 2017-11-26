# SwiftNotes

A super simple wrapper around [NotificationCenter](https://developer.apple.com/documentation/foundation/nsnotificationcenter).

## Setup

```ruby
pod 'SwiftNotes'
```

Or just drop [SwiftNotes.swift](https://github.com/sobri909/SwiftNotes/blob/master/SwiftNotes/SwiftNotes.swift) into your project. 

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

