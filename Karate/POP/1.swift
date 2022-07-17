//
//  1.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/16/22.
//

import Foundation
import SwiftUI


enum Constant {
    enum UserDefaults {
        enum Key: String {
            case highScore
            
            var value: String {
                return rawValue
            }
        }
    }
}


protocol Saveable {
    func set<A>(_ value: A, forKey key: Constant.UserDefaults.Key)
    func integer(forKey key: Constant.UserDefaults.Key) -> Int
}

extension Saveable {
    func set<A>(_ value: A, forKey key: Constant.UserDefaults.Key) {
        UserDefaults.standard.set(value, forKey: key.value)
        UserDefaults.standard.synchronize()
    }
    func integer(forKey key: Constant.UserDefaults.Key) -> Int {
        UserDefaults.standard.integer(forKey: key.value)
    }
}


struct DummyView2: View, Saveable {

    
    var body: some View {
        Text("\(integer(forKey: .highScore))")
            .onTapGesture {
                self.set(100, forKey: .highScore)
            }
        
        
    }
}
