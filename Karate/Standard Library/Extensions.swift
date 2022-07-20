//
//  Extensions.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/20/22.
//

import Foundation

//MARK: GranolaBar Protocol
protocol GranolaBar {
    func eatBar(_ howMany: Int) -> String
}
//MARK: GranolaBar Extension
extension GranolaBar {
    func eatBar(_ howMany: Int) -> String {
        return ("You had \(howMany) bars so you can go much much further")
    }
}

//MARK: Mountain Struct
struct Mountain: GranolaBar {
    var height: Int
    var distanceOfTrek: Int
    private let isTired = true
}
//MARK: Mountain Extension
extension Mountain {
    
    var totalWaterNeeded: Int {
        return distanceOfTrek * height / 2
    }
    
    init(_ height: Int, _ distanceOfTrek: Int) {
        self.height = height
        self.distanceOfTrek = distanceOfTrek
    }
    
    func howMuchWater() -> String {
        let waterNeeded = mountain1.totalWaterNeeded
        return ("The amount of water needed is \(waterNeeded)")
    }
    
    func withGranolaBar() -> String {
        let distanceWithBar = mountain1.eatBar(4)
        return "Wow you ate \(distanceWithBar) granola bars you can hike All Day"
    }
}

//MARK: Initialization
let mountain1 = Mountain(120, 2000)



//MARK: Extend Integer Type
extension Int {
    func multiplied(by i: Int) -> Int {
        self * i
    }
}
//MARK: Integer Type Function
func intExample() -> Int {
    return 4.multiplied(by: 7)
}
