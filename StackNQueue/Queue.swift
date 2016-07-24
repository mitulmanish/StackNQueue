//
// Created by Mitul Manish on 24/07/2016.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

class Queue {
    private var top: Node?
    
    internal func enqueue(value: Int) {
        if top == nil {
            top = Node(value: value)
            return
        }
        var currentNode = top
        var prevNode: Node?
        while currentNode != nil {
            prevNode = currentNode
            currentNode = currentNode?.nextConnectedNode
        }
        
        let childNode = Node(value: value)
        prevNode!.nextConnectedNode = childNode
    }
    
    internal func dequeue() -> Int? {
        if top == nil {
            return nil
        }
        
        if let nextTop = top!.nextConnectedNode {
            top = nextTop
            return nextTop.nodeValue
        }
        
        return nil
    }
    
    internal func isEmpty() -> Bool {
        return top == nil ? true : false
    }
    
    
    internal func peek() -> Int? {
        return !isEmpty() ? (top!.nodeValue) : nil
    }
    
    private class Node {
        
        private var value: Int?
        private var nextNode: Node?
        
        init(value: Int) {
            self.value = value
        }
        
        private var nodeValue: Int {
            get {
                return value ?? 0
            }
            set(newValue) {
                self.value = newValue
            }
        }
        
        private var nextConnectedNode: Node? {
            get {
                return nextNode
            }
            
            set(node) {
                self.nextNode = node
            }
        }
    }
}
