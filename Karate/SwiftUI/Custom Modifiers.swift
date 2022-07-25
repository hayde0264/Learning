//
//  Custom Modifiers.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/25/22.
//

import SwiftUI

protocol CustomModifiersHelper {
    var systemNameString: String { get }
}
extension CustomModifiersHelper {
    var systemNameString: String {
        "circle"
    }
}
struct MyModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.system(size: 100).weight(.semibold))
            .foregroundColor(.blue)
    }
}

struct Custom_Modifiers: View, CustomModifiersHelper {
    
    var body: some View {
        Image(systemName: systemNameString)
            .modifier(MyModifier())
    }
    
}

struct Custom_Modifiers_Previews: PreviewProvider {
    static var previews: some View {
        Custom_Modifiers()
    }
}


