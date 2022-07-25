//
//  Menus.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/25/22.
//

import SwiftUI

enum MenusData {
    enum stringData: String {
        case menuTitle = "Select"
        case button1String = "Option 1"
        case button2String = "Option 2"
        case button3String = "Option 3"
        case performOption1String = "This is Option 1"
        case performOption2String = "This is Option 2"
        case performOption3String = "This is Option 3"
    }
    enum floatData: CGFloat {
        case myVstack = 10
    }
}
protocol MenusHelper {
    var vStackSpacing: CGFloat { get }
    var menuText: String { get }
    var button1Text: String { get }
    var button2Text: String { get }
    var button3Text: String { get }
    func performOption1()
    func performOption2()
    func performOption3()
}
extension MenusHelper {
    var vStackSpacing: CGFloat {
        MenusData.floatData.myVstack.rawValue
    }
    var menuText: String {
        MenusData.stringData.menuTitle.rawValue
    }
    var button1Text: String {
        MenusData.stringData.button1String.rawValue
    }
    var button2Text: String {
        MenusData.stringData.button2String.rawValue
    }
    var button3Text: String {
        MenusData.stringData.button2String.rawValue
    }
    func performOption1() {
        print(MenusData.stringData.performOption1String.rawValue)
    }
    func performOption2() {
        print(MenusData.stringData.performOption2String.rawValue)
    }
    func performOption3() {
        print(MenusData.stringData.performOption3String.rawValue)
    }
}

struct Menus: View, MenusHelper {
    
    var body: some View {
        
        VStack(spacing: vStackSpacing) {
            Menu(menuText) {
                Button(button1Text, action: performOption1)
                Button(button2Text, action: performOption2)
                Button(button3Text, action: performOption3)
            }
        }
        .padding()
    }
    
}

struct Menus_Previews: PreviewProvider {
    static var previews: some View {
        Menus()
    }
}
