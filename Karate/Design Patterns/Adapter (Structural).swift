//
//  Adapter (Structural).swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/15/22.
//

import Foundation
import SwiftUI

                                                                //MARK: Adapter
                                                                /* The adapter pattern is used to link two otherwise
                                                                   (incompatible) types by wrapping the "adaptee"
                                                                   with a class that supports the interface required
                                                                   by the client.
                                                                 
                                                                    ===================
                                                                    HOW TO USE PROPERLY
                                                                    ===================
                                                                                        1.
                                                                */
//MARK: Protocol
protocol Structural {
    
    //MARK: Associated Type A = AnyType
    associatedtype A
    
    //MARK: Properies
    var firstStructural: A { get }
    var secondStructural: A { get }
    
}

//MARK: Struct
struct Adaptee<A> {
    
    //MARK: Properties
    let firstAdaptee: A
    let secondAdaptee: A
    
    //MARK: Initialization
    init(firstAdaptee: A, secondAdaptee: A) {
        self.firstAdaptee = firstAdaptee
        self.secondAdaptee = secondAdaptee
    }
}

