//
//  20- GeneralPurposeTree.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/15/22.
//

import Foundation




class TreeNode<T> {
    var value: T
    var children: [TreeNode] = []
    
    init(_ value: T) {
        self.value = value
    }
    
    func add(_ child: TreeNode) {
        children.append(child)
    }
}


extension TreeNode {
    func forEachDepthFirst(visit: (TreeNode) -> Void) {
        visit(self)
        children.forEach {
            $0.forEachDepthFirst(visit: visit)
        }
    }
}

extension TreeNode {
    func forEachLevelOrder(visit: (TreeNode) -> Void) {
        visit(self)
        var queue = Queue<TreeNode>()
        children.forEach { queue.enqueue($0)}
        while let node = queue.dequeue() {
            visit(node)
            node.children.forEach { queue.enqueue($0)}
        }
    }
}


struct Queue<T> {
    private var leftStack: [T] = []
    private var rightStack: [T] = []
    
    public init() {}
    
    var isEmpty: Bool {
        leftStack.isEmpty && rightStack.isEmpty
    }
    var peak: T? {
        !leftStack.isEmpty ? leftStack.last : rightStack.last
    }
    
    @discardableResult mutating func enqueue(_ element: T) -> Bool {
        rightStack.append(element)
        return true
    }
    
    mutating func dequeue() -> T? {
        if leftStack.isEmpty {
            leftStack = rightStack.reversed()
            rightStack.removeAll()
        }
        return leftStack.popLast()
    }
}
