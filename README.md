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

// respond to the event
when(.somethingHappened) { _ in
    // do stuff
}
```

#### Sending Notifications

```swift
// send your custom event
trigger(.somethingHappened)

// send your custom event with extra info
trigger(.somethingHappened, userInfo: ["goodTimes": true])
```

#### Observe Specific Senders 

```swift
// trigger an event on a specific sender
trigger(.updatedFromRemote, on: self)

// observe the event on a specific sender
when(model, does: .updatedFromRemote) { _ in
    // do stuff
}
```

#### Respond On A Specific Queue

```swift
// make sure the closure is run on the main queue
when(.somethingHappened, doOn: OperationQueue.main) _ in 
    // do stuff
}
```

