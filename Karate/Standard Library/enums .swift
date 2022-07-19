//
//  enums .swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/18/22.
//

import Foundation
import SwiftUI

                                                                    //MARK: Background
                                                                    /* An ENUMERATION is a list of mutually
                                                                       exclusive cases that define a common
                                                                       type. Enums provide a type-safe alternative
                                                                       to integer values or strings.
                                                                       
                                                                       You can use enumerations to handle
                                                                       responses, store state and encapsulate
                                                                       values.
                                                                     
                                                                       ================
                                                                       HOW TO USE ENUMS
                                                                       ================
                                                                                       1.
                                                                    */
//MARK: 1st Example
enum Number {
    case one
    case two
    case three
}

enum NumberAlterative {
    case one, two, three
}


//MARK: 2nd Example

enum User {
    case paid
    case unpaid
    
    func returnCustomerStatus() -> String {
        switch self {
        case .unpaid:
            return "Not paid"
        case .paid:
            return "Paid"
        }
    }
}


//MARK: 3rd Example
enum RawValueType: String {
    case one = "Number One"
    case two = "Number Two"
    case three = "Number Three"
    
    var sendValues: String {
        switch self {
        case .one:
            return (self.rawValue)
        case .two:
            return (self.rawValue)
        case .three:
            return (self.rawValue)
        }
    }
}


//MARK: 4th Example

enum AssociatedTypes {
    case red(Color)
    case blue(Color)
    
    var sendOver: Color {
        switch self {
        case .red:
            return Color.red
        case .blue:
            return Color.blue
        }
    }
}


//MARK: 5th Example
enum StringType: String {
    case mercury = "Mercury"
    case venus = "Venus"
    case saturn = "Saturn"
    
    var key: String {
        switch self {
        case .mercury:
            return self.rawValue
        case .venus:
            return self.rawValue
        case .saturn:
            return self.rawValue
        }
    }
}



