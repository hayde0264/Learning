//
//  Composite (Structural).swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/15/22.
//

import Foundation

protocol GirlFriend {
    func getNumber(number: String)
}

final class Madie: GirlFriend {
    func getNumber(number: String) {
        print("Madies number is \(number)")
    }
}
final class Jodie: GirlFriend {
    func getNumber(number: String) {
        print("Jodies number is \(number)")
    }
}

final class Numbers: GirlFriend {
    private lazy var girlFriend = [GirlFriend]()
    
    init(girlFriend: GirlFriend...) {
        self.girlFriend = girlFriend
    }
    
    func getNumber(number: String) {
        for chick in self.girlFriend {
            chick.getNumber(number: number)
        }
    }
}




