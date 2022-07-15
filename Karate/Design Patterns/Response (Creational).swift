//
//  ChainOfResponsibility.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/14/22.
//

import Foundation

//MARK: Class
class Enemy {
    let strength = 500
}

//MARK: Protocol
protocol MilitaryChain {
    var stength: Int { get }
    var nextRank: MilitaryChain? { get set }
    
    func shouldDefeat(amount: Int)
}


//MARK: Class & Protocol
class Soldier : MilitaryChain {
    var stength: Int = 250
    var nextRank: MilitaryChain?
    
    func shouldDefeat(amount: Int) {
        if amount < stength {
            print("Defeated by soldier")
        } else {
            nextRank?.shouldDefeat(amount: amount)
        }
    }
}


//MARK: Class & Protocol
class Officer: MilitaryChain {
    var stength: Int = 500
    
    var nextRank: MilitaryChain?
    
    func shouldDefeat(amount: Int) {
        if amount < stength {
            print("Enemy defeaed by officer")
        } else {
            nextRank?.shouldDefeat(amount: amount)
        }
    }
}


//MARK: Class & Protocol
class General: MilitaryChain {
    var stength: Int = 750
    
    var nextRank: MilitaryChain?
    
    func shouldDefeat(amount: Int) {
        if amount < stength {
            print("Enemy was defeated by general")
        } else {
            print("Emeny is too strong")
        }
    }
}

//MARK: Implementation
/* */
