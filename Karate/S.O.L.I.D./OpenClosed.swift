//
//  OpenClosed.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/18/22.
//

import Foundation

protocol Shooting {
    func shoot() -> String
}

final class LaserBeam: Shooting {
    func shoot() -> String {
        return "Ziiiiiipppp"
    }
}

final class WeaponsComposite {
    let weapons: [Shooting]
    
    init(weapons: [Shooting]) {
        self.weapons = weapons
    }
    
    func shoot() -> [String] {
        return weapons.map { $0.shoot() }
    }
}

final class RocketLauncher: Shooting {
    func shoot() -> String {
        return "Whoooshhh"
    }
}


let laser = LaserBeam()
var weapons = WeaponsComposite(weapons: [laser])
let rocket = RocketLauncher()



