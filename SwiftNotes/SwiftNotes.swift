//
//  SwiftNotes.swift
//
//  Created by Matt Greenfield on 25/11/17.
//  Copyright © 2017 Big Paua. 
//

import Foundation

/** SENDER AGNOSTIC WRAPPERS **/

// run the closure on the sender's thread
@discardableResult public func when(_ event: Notification.Name,
                                    do closure: @escaping (Notification) -> Swift.Void) -> NSObjectProtocol {
    return NotificationCenter.default.addObserver(forName: event, object: nil, queue: nil) { note in
        closure(note)
    }
}

// run the closure on an explicit queue
@discardableResult public func when(_ event: Notification.Name, doOn queue: OperationQueue,
                                    do closure: @escaping (Notification) -> Swift.Void) -> NSObjectProtocol {
    return NotificationCenter.default.addObserver(forName: event, object: nil, queue: queue) { note in
        closure(note)
    }
}

/** SENDER EXPLICIT WRAPPERS **/

// run the closure on the sender's thread
@discardableResult public func when(_ sender: Any, does event: Notification.Name,
                                    do closure: @escaping (Notification) -> Swift.Void) -> NSObjectProtocol {
    return NotificationCenter.default.addObserver(forName: event, object: sender, queue: nil) { note in
        closure(note)
    }
}

// run the closure on an explicit queue
@discardableResult public func when(_ sender: Any, does event: Notification.Name, doOn queue: OperationQueue,
                                    do closure: @escaping (Notification) -> Swift.Void) -> NSObjectProtocol {
    return NotificationCenter.default.addObserver(forName: event, object: sender, queue: queue) { note in
        closure(note)
    }
}

// post an event
public func trigger(_ event: Notification.Name, on object: Any? = nil, userInfo: [AnyHashable : Any]? = nil) {
    NotificationCenter.default.post(Notification(name: event, object: object, userInfo: userInfo))
}
