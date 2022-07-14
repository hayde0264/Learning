//
//  contents.swift
//  Algorithms & Data Structures (iOS)
//
//  Created by Hayden Howell on 7/13/22.
//

import Foundation
import SwiftUI

//MARK: Constant Time = O(1)
class ConstantTime {
func constantTime(_ A: Int) -> Int {
    let result = A * A
    return result
}
/* Algorithms that don't do a lot of looping,
   or simply return the result of some
   simple calculation are said to have CONSTANT
   TIME or O(1)
 */
}


//MARK: Linear Time = O(n)
class LinearTime {
func linearTime(_ A: [Int]) -> Int {
    for i in 0..<A.count {
        if A[i] == 0 {
            return 0
        }
        // print(i)
    }
    return 1
}
/* As soon as the performance of algorithm
   becomes dependent on the size of the
   input being passed in, we can no longer
   say it is constant....
   If the length of time it takes to process,
   we refer to this as Linear Time. Linear
   time refers to the length of time it takes
   is directly proportional to the size of the
   input. 0(n)
 */
}


//MARK: Logarithmic Time = O(log n)
class Logarithmictime {
func logarithmicTime(_ A: Int) -> Int {
    var a = A
    var result = 0
    while a > 1 {
        a /= 2
        //print(n)
        result += 1
    }
    return result
}
/* Algorithms like BST (Binary Search Trees)
   are extremely fast because they half their
   results each time they look for a result.
   This halfing is logarithmic which we refer
   to as O(log n).
 */
}


//MARK: Quadratic time = O(n^2)
class QuadraticTime {
func quadraticTime(_ A: Int) -> Int {
    var result = 0
    for i in 0..<A {
        for _ in i..<A {
            result += 1
            // print("\(i) \(j)")
        }
    }
    return result
}
/* When you embed one for loop within another,
   you get a quadratic effect applied to your
   algorithm which can really slow things down.
   These are OK for getting the right answer,
   they just aren't the most performant.
   O(n^2)
 */
}


//MARK: Native brute force = O(n^2)
class BruteForce {
/* Given 2 Arrays, create a function that let's a user know wheather these two arrays contain any common types */
//MARK: Native brute force = O(n^2)
func commonItemsBrute(_ A: [Int], _ B: [Int]) -> Bool {
    for i in 0..<A.count {
        for j in 0..<B.count {
            if A[i] == B[j] {
                return true
            }
        }
    }
    return false
}
//MARK: Convert to hash & lookup via other index
func commonItemsHash(_ A: [Int], _ B: [Int]) -> Bool {
    
    // Still looping...but not nested - O(2n) vs 0(n^2)
    var hashA = [Int: Bool]()
    for a in A { // O(n)
        hashA[a] = true
    }
    
    
    // Still looping...but not nested - O(2n) vs 0(n^2)
    for b in B { // O(n)
        if hashA[b] == true {
            return true
        }
    }
    return false
}

}
