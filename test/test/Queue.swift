//
//  Queue.swift
//  test
//
//  Created by Vineet Choudhary on 21/11/18.
//  Copyright © 2018 Developer Insider. All rights reserved.
//

import Foundation

struct Queue<T> {
    private var array = [T]()
    
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var front: T? {
        return array.first
    }
    
    public mutating func enqueue(item: T) {
        array.append(item)
    }
    
    public mutating func dequeue()-> T? {
        if isEmpty {
            return nil
        }
        return array.removeFirst() //array.remove(at: 0)
    }
}

extension Queue: CustomStringConvertible {
    var description: String {
        return array.description
    }
}

func startQueue() {
    var queue = Queue<String>()
    queue.enqueue(item: "Hello")
    queue.enqueue(item: "There")
    print(queue)
    print("dequeue - \(queue.dequeue() ?? "Queue is empty")")
    print(queue)
    print("dequeue - \(queue.dequeue() ?? "Queue is empty")")
    print(queue)
    print("dequeue - \(queue.dequeue() ?? "Queue is empty")")
}
