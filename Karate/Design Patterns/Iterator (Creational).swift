//
//  Iterator.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/14/22.
//

import Foundation

struct Chocolate {
    let brand: String
}

struct ChocolateBrands {
    let brands: [Chocolate]
}

struct ChocolateBrandIterator: IteratorProtocol {
    private var current = 0
    private let chocolateBrands: [ChocolateBrands]
    
    init(chocolateBrands: [ChocolateBrands]) {
        self.chocolateBrands = chocolateBrands
    }
    
    mutating func next() -> ChocolateBrands? {
        defer { current += 1 }
        return chocolateBrands.count > current ? chocolateBrands[current] : nil
    }
}

extension ChocolateBrandIterator: Sequence {
    func makeIterator() -> ChocolateBrandIterator {
        return ChocolateBrandIterator(chocolateBrands: chocolateBrands)
    }
}
