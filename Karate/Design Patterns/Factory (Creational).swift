//
//  Factory (Creational).swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/15/22.
//

import Foundation
import SwiftUI
                                                        //MARK: Background
                                                        /* The Factory pattern is a good choice if
                                                           you want to prevent exposing all the implementation
                                                           types to our callers. Callers only know the
                                                           prototype or base class. This reduces the
                                                           dependencies within the system.
                                                         
                                                           This pattern allows changing the exsisting
                                                           implementation types or adding new ones without
                                                           exposing their details to the componets that
                                                           rely on them. The Factory pattern is used to
                                                           replace class constructors.
                                                            
                                                            ===================
                                                            HOW TO USE PROPERLY
                                                            ===================
                                                                               1.
                                                           
                                                            */
//MARK: Prototcol
protocol CurrencyDescription {
    var symbol: String { get }
    var code: String { get }
}

//MARK: Final Class
final class Euro: CurrencyDescription {
    var symbol: String {
        "E"
    }
    var code: String {
        "EUR"
    }
}

//MARK: Final Class
final class UnitedStatesDollar: CurrencyDescription {
    var symbol: String {
        "$"
    }
    var code: String {
        "USD"
    }
}

//MARK: Enumeration
enum Country {
    case UnitedStates
    case Spain
    case uk
    case greece
}

//MARK: Enumeration
enum CurrencyFactory {
    static func currency(country: Country) -> CurrencyDescription? {
        switch country {
        case .UnitedStates:
            return UnitedStatesDollar()
        case .Spain:
            return Euro()
        case .uk:
            return Euro()
        case .greece:
            return Euro()
        }
    }
}


