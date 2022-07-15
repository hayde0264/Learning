//
//  Builder (Creational).swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/15/22.
//

import Foundation
                                                        //MARK: Background
                                                        /* The Builder pattern seperates the creation of
                                                           objects from their configuration. The benefit
                                                           of this seperation is that clients require less
                                                           knowledge about the default configuration values.
                                                         
                                                           Don't use the Builder pattern when creating objects
                                                           that only require a few configuration values, or when
                                                           those values must change whenever a new instance gets
                                                           created.
                                                         
                                                           ===================
                                                           HOW TO USE PROPERLY
                                                           ===================
                                                                              1. Apply when the initialization of a
                                                                                 type uses many pre-defined faults
                                                                                 that don't change often
                                                           */
