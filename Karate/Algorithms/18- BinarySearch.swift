//
//  BinarySearch.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/15/22.
//

import Foundation

func binarySearch<T: Comparable>(_ a: [T], key: T) -> Int? {
    var lower = 0
    var upper = a.count
    
    while lower < upper {
        let midIndex = lower + (upper - lower) / 2
        
        
        if a[midIndex] == key {
            return midIndex
            
            
        } else if a[midIndex] < key {
            lower = midIndex + 1
            
            
        } else {
            upper = midIndex
        }
        
        
    }
    return nil
}


