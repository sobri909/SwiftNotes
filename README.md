# SwiftNotes

A super simple wrapper around [NotificationCenter](https://developer.apple.com/documentation/foundation/nsnotificationcenter).

## Setup

```ruby
pod 'SwiftNotes'
```

Or just drop [SwiftNotes.swift](https://github.com/sobri909/SwiftNotes/blob/master/SwiftNotes/SwiftNotes.swift) into your project. 

## UIKit Notification Examples

#### UIKeyboard Notifications

```swift
when(.UIKeyboardDidShow) { note in
    // do stuff 
}
```

#### UIApplication Notifications

```swift
when(.UIApplicationDidBecomeActive) { _ in
    // do stuff
}
```

## Custom Notifications

#### Define A Custom Notification

```swift
// define the custom event name
extension NSNotification.Name {
    static let somethingHappened = Notification.Name("somethingHappened")
}
```

#### Trigger A Custom Notification

```swift
// send your custom event
trigger(.somethingHappened)
```

#### Respond To A Custom Notification

```swift
when(.somethingHappened) { _ in
    // do stuff
}
```

## Extra Parameters

#### Include UserInfo

```swift
trigger(.somethingHappened, userInfo: ["goodTimes": true])
```

#### Trigger An Event On A Specific Sender

```swift
trigger(.updatedFromRemote, on: self)
````

#### Observe An Event On A Specific Sender

```swift
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

