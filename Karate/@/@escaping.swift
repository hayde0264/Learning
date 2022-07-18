//
//  @escaping.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/16/22.
//

import Foundation
import SwiftUI

                                                                //MARK: Background
                                                                /* If a closure is stored somewhere
                                                                   (ex. a property) to be called later
                                                                   it is said to be ESCAPING. Closures
                                                                   that never leave a functions scope
                                                                   are said to be NON-ESCAPING.
                                                                 
                                                                   With escaping closures, the compiler
                                                                   wants us to be explicit about using
                                                                   self in closure expressions. Closures
                                                                   are NON-ESCAPING by default. Which means
                                                                   it's reference cycle is destroyed after
                                                                   the function is returned.
                                                                 
                                                                    =============
                                                                    @escaping
                                                                    =============
                                                                                 1. Closure arguements are non-escaping
                                                                                 2. If you want to store a closure for
                                                                                    later use, you need to make the closure
                                                                                    as @escaping.
                                                                   */

