//
//  SwiftNotes.swift
//
//  Created by Matt Greenfield on 25/11/17.
//  Copyright © 2017 Big Paua. 
//

import Foundation

/** SENDER AGNOSTIC WRAPPERS **/

// run the closure on the sender's thread
public func when(_ event: Notification.Name, do closure: @escaping (Notification) -> Swift.Void) {
    NotificationCenter.default.addObserver(forName: event, object: nil, queue: nil) { note in
        closure(note)
    }
}

// run the closure on an explicit queue
public func when(_ event: Notification.Name, doOnQueue: OperationQueue, do closure: @escaping (Notification) -> Swift.Void) {
    NotificationCenter.default.addObserver(forName: event, object: nil, queue: doOnQueue) { note in
        closure(note)
    }
}

/** SENDER EXPLICIT WRAPPERS **/

// run the closure on the sender's thread
public func when(_ sender: Any, does event: Notification.Name, do closure: @escaping (Notification) -> Swift.Void) {
    NotificationCenter.default.addObserver(forName: event, object: sender, queue: nil) { note in
        closure(note)
    }
}

// run the closure on an explicit queue
public func when(_ sender: Any, does event: Notification.Name, doOnQueue: OperationQueue, do closure: @escaping (Notification) -> Swift.Void) {
    NotificationCenter.default.addObserver(forName: event, object: sender, queue: doOnQueue) { note in
        closure(note)
    }
}
