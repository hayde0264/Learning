//
//  Event Modifiers.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/25/22.
//

import SwiftUI

protocol EventModifiersHelper {
    var dummyImage: String { get }
    func onAppearFunc()
}
extension EventModifiersHelper {
    var dummyImage: String {
        "envelope.circle"
    }
    func onAppearFunc() {
        print("Current font size...")
    }
}

struct Event_Modifiers: View, EventModifiersHelper {
  
    
    let fontSize: CGFloat = 100
    
    var body: some View {
        
        Image(systemName: dummyImage)
            .font(Font.system(size: fontSize))
            .onAppear {
                onAppearFunc()
            }
        
    }
}

struct Event_Modifiers_Previews: PreviewProvider {
    static var previews: some View {
        Event_Modifiers()
    }
}
