//
//  main.swift
//  StackNQueue
//
//  Created by Mitul Manish on 24/07/2016.
//  Copyright (c) 2016 Mitul Manish. All rights reserved.
//

import Foundation

// stack operations

var stack = Stack()
print(stack.isEmpty())

for i in 1...100 {
    stack.push(i)
}

for i in 1...99{
    stack.pop()
}

print(stack.pop())
print(stack.isEmpty())

// queue operations

var queue = Queue()

for i in 1...10 {
    queue.enqueue(i)
}

queue.dequeue()



