//
//  Prototype (Creational).swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/15/22.
//

import Foundation
                                                        //MARK: Background
                                                        /* The prototype patterns should be used when the construction
                                                           of new instances is expensive or inefficient. The protoype
                                                           pattern solves this issue by cloning objects that are expensive
                                                           to create. The prototype gets created as usual, then, all of the
                                                           consecutive instances get created by copying the instance.
                                                         
                                                           With VALUE types, we get prototype compliance for free since value
                                                           types Clone. But with REFERNCE types it's not that straightfoward.
                                                           To use the prototype pattern with REFERENCE types, reference types
                                                           must adopt the NSCopying protocol.
                                                         
                                                           With the NSCopying protocol, there is "shallow" and "deep" copying.
                                                           A DEEP copy duplication the object's properties. A SHALLOW copy
                                                           duplicates only the references (pointers to those objects).
                                                         
                                                           ===================
                                                           HOW TO USE PROPERLY
                                                           ===================
                                                                              1. The prototype instance and the clones are
                                                                                 their own distictive objects
                                                                              2. Carefully decide for each reference type
                                                                                 property weather a shallow or deep copy
                                                                                 should be implemented
                                                         
                                                         */
