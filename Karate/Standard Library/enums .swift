//
//  enums .swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/18/22.
//

import Foundation
import UIKit
import SwiftUI

enum Number {
    case one
    case two
    case three
}

enum NumberAlterative {
    case one, two, three
}

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

enum CoolShit {
    enum Key: String {
        case red
        case blue
        
    
        
        var sendValues: String {
            switch self {
            case .red:
                return "red"
            case .blue:
                return "blue"
            }
        }
    }
}



