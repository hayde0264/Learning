//
//  1- Functions.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/17/22.
//

import Foundation
                                                            //MARK: Background
                                                            /* Functions in swift are first-class values.
                                                               Which means functions can be passed as
                                                               arguements to other functions, and functions
                                                               may return new functions.
                                                             
                                                               Functions that take arguements as parameters
                                                               are called higher-order functions.
                                                               
                                                               ==========
                                                               FUNCTIONS
                                                               ==========
                                                                         1. Functions can be assigned to variables
                                                                            and passed in and out of other functions
                                                                            as arguements.
                                                                         2. Functions can capture variables that exsist
                                                                            outside of their local scope.
                                                                         3. There are two ways of creating functions -
                                                                            either with the FUNC keyword, or with {}
                                                               */
//MARK: Example 1 - assign to variables & pass to function arguments
func printInt(i: Int) {
    
    print("You passed \(i)")
    
}
let someInt = printInt
//someInt(3) = "You passed 3"

func returnFunc() -> (Int) -> String {
    
    func innerFunc(i: Int) -> String {
        return "You passed \(i)"
    }
    
    return innerFunc
}
let myFunc = returnFunc()
//myFunc(3) = "You passed 3"




//MARK: Example 2 - functions can capture variables outside their scope
func makeCounter() -> (Int) -> String {
    
    var counter = 0
    
    func innerFunc(i: Int) -> String {
        counter += i
        return "Running total \(counter)"
    }
    
    return innerFunc
}
let f = makeCounter()
//f(22) = "Running total 22"


//MARK: Example 3 - functions can be declared using the {} as a closure expression
func doubler(i: Int) -> Int {
    
    return i * 2
    
}
let runDoubler = [1,2,3,4].map(doubler)
//[2,4,6,8]

// or
let doubler2 = { (i: Int) -> Int in return i * 2 }
//[2,4,6,8

//or
let someMap = (0..<3).map { _ in Int.random(in: 1..<100) }
//[86,12,23



//MARK: Functions as Delegates
protocol AlertViewDelegate: AnyObject {
    
    func buttonTapped(atIndex: Int)
    
}

class AlertView {
    
    var buttons: [String]
    
    weak var delegate: AlertViewDelegate?
    
    init(buttons: [String] = ["OK, CANCEL"]) {
        self.buttons = buttons
    }
    
    func fire() {
        delegate?.buttonTapped(atIndex: 1)
    }
}

class ViewControllerr: AlertViewDelegate {
    let alert: AlertView
    
    init(alert: AlertView) {
        self.alert = AlertView(buttons: ["Okay, Cancel"])
        alert.delegate = self
    }
    
    func buttonTapped(atIndex: Int) {
        print("Button tapped: \(atIndex)")
    }
}
