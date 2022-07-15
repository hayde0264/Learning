//
//  16- Stack.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/14/22.
//

import Foundation

//MARK: Performance = Best: O(1) & Worst: O(n)

                                                                //MARK: Background
                                                                                /* A stack is like an array but with limited functionality.
                                                                                 You can only push to add a new element to the top of the
                                                                                 stack, pop to remove the element from the the, and peek
                                                                                 at the top element without popping it off.
                                                                               
                                                                                 A stack gives you a LIFO (last-in-first-out) order. The
                                                                                 the element you pushed last is the first element to come
                                                                                 off with a pop.
                                                                                 
                                                                                 Inserting at the beginning on an array is expensive, an O(n)
                                                                                 operation, because it requires exsisting elements to shift back
                                                                                 a seat (like in the lunch line). Adding at the end of an array is
                                                                                 O(1), which means it's takes the same time regardless of the size
                                                                                 of data.
                                                                               
                                                                                 =============================
                                                                                 SAMPLE
                                                                                        var myStack = Stack(array: [])
                                                                                        myStack.push(10)
                                                                                        myStack.push(3)
                                                                                        myStack.push(75)
                                                                                        myStack.pop() // 75
                                                                                        myStack.pop() // 3
                                                                                        myStack.isEmpty // False
                                                                                 ============================
                                                                                */


struct Stack<T> {
    // Data Structure for holding values
    private var array = [T]()
    
    // Verifies if the stack is empty
    var isEmpty: Bool {
        array.isEmpty
    }
    
    // Returns the number of items in a stack
    var count: Int {
        array.count
    }
    
    /* The parameter here(_ element: T) will be
       pushed onto the top of the stack */
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    /* The parameter here(_ element: T) will be
       removed and returned from the top of the
       stack */
    mutating func pop(_ element: T) {
        array.popLast()
    }
    
    
    // Returns the item at the top of the stack
    var top: T? {
        array.last
    }
}
