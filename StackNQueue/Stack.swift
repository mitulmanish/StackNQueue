//
// Created by Mitul Manish on 24/07/2016.
// Copyright (c) 2016 ___FULLUSERNAME___. All rights reserved.
//

import Foundation

class Stack {
    
    private var top: Node?
    
    internal func push(value: Int) {
        if top == nil {
            top = Node(value: value)
            return
        }
        
        let currentTop = top!
        top = Node(value: value)
        top?.nextConnectedNode = currentTop
    }
    
    internal func pop() -> Int? {
        if top == nil {
            return nil
        }
        
        let currentTop = top!
        
        if let nextTop = top!.nextConnectedNode {
            top = nextTop
        } else {
            top = nil
        }
        
        return currentTop.nodeValue
    }
    
    internal func isEmpty() -> Bool {
        return top == nil ? true : false
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
