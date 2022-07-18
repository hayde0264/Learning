//
//  SingleResponsibility.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/17/22.
//

import Foundation
import UIKit


                                                                        //MARK: Background
                                                                        
//MARK: Protocol
protocol Openable {
    mutating func open()
}

//MARK: Protocol
protocol Closable {
    mutating func close()
}

//MARK: Struct
struct PodBayDoor: Openable, Closable {
    
    private enum State {
        case open
        case closed
    }
    
    private var state: State = .closed
    
    
    mutating func open() {
        state = .open
    }
    
    mutating func close() {
        state = .closed
    }
    
}

//MARK: Final Class
final class DoorOpener {
    private var door: Openable
    
    init(door: Openable) {
        self.door = door
    }
    
    func execute() {
        door.open()
    }
}

//MARK: Final Class
final class DoorCloser {
    private var door: Closable
    
    init(door: Closable) {
        self.door = door
    }
    
    func execute() {
        door.close()
    }
    
}

let door = PodBayDoor()
let doorOpener = DoorOpener(door: door)
let doorCloser = DoorCloser(door: door)

