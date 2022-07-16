//
//  19- B-Tree.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/15/22.
//

import Foundation

                                                //MARK: Background
                                                /* A B-Tree is a self-balancing search tree,
                                                   in which nodes can have MORE THAN 2 children.
                                                 
                                                 ===================
                                                 HOW TO USE PROPERLY
                                                 ===================
                                                                    1. Every node has at most 2n keys
                                                                    2. Every node (except for the root)
                                                                       has at least n keys
                                                                    3. Every non-leaf node with k keys
                                                                        has k+1 children
                                                                    4. The keys in all nodes are sorted
                                                                       in increasing order
                                                                    5. The subtree between two keys are
                                                                       and / of a non-leaf node contain
                                                                       all the keys between k and /
                                                                    6. All leaves appear at the same level
                                                 */
