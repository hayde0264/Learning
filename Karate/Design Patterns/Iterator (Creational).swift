//
//  Iterator.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/14/22.
//

import Foundation

//MARK: Class
class Driver {
    
    let isGoodDriver: Bool
    let name: String
    
    init(isGood: Bool, name: String) {
        self.isGoodDriver = isGood
        self.name = name
    }
}



//MARK: Class
class Car {
    var goodDriverIterator: GoodDriverIterator {
        return GoodDriverIterator(drivers: drivers)
    }
    
    private var drivers = [
    Driver(isGood: true, name: "Ken"),
    Driver(isGood: false, name: "Rick"),
    Driver(isGood: true, name: "Kayla"),
    Driver(isGood: false, name: "Ben")
    ]
}


//MARK: Extension & Sequence
extension Car: Sequence {
    func makeIterator() -> some IteratorProtocol {
        return GoodDriverIterator(drivers: drivers)
    }
}


//MARK: Class & Protocol
class GoodDriverIterator: IteratorProtocol {
    
    private let drivers: [Driver]
    private var current = 0
    
    init(drivers: [Driver]) {
        self.drivers = drivers.filter { $0.isGoodDriver }
    }
    
    func next() -> Driver? {
        defer { current += 1 }
        return drivers.count > current ? drivers[current] : nil
    }
    
    func allDrivers() -> [Driver] {
        return drivers
    }
}


//MARK: Class & Protocol
class BadDriverIterator: IteratorProtocol {
    
    private let drivers: [Driver]
    private var current = 0
    
    init(drivers: [Driver]) {
        self.drivers = drivers.filter { !$0.isGoodDriver }
    }
    
    func next() -> Driver? {
        defer { current += 1 }
        return drivers.count > current ? drivers[current] : nil
    }
    
    func allDrivers() -> [Driver] {
        return drivers
    }
}



//MARK: Implementation
/* let car = Car()
   let goodDriverIterator = car.goodDriverIterator.next()
   let goodDriverBySequence = car.makeIterator()
 */
