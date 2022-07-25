//
//  Framing.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/25/22.
//

import SwiftUI


extension Text {
    //Small Frame
    func smallFrame(_ width: CGFloat = 100, _ height: CGFloat = 100, _ alignment: Alignment = .center, _ foregroundColor: Color = .orange) -> some View {
        let small = Text("Small Frame")
            .foregroundColor(foregroundColor)
            .frame(width: width, height: height, alignment: alignment)
        return small
    }
    
    //Medium Frame
    func mediumFrame(_ width: CGFloat = 150, _ height: CGFloat = 150, _ alignment: Alignment = .center, _ foregroundColor: Color = .blue) -> some View {
        let medium = Text("Medium Frame")
            .foregroundColor(foregroundColor)
            .frame(width: width, height: height, alignment: alignment)
        return medium
    }
    
    //Large Frame
    func largeFrame(_ width: CGFloat = 300, _ height: CGFloat = 300, _ alignment: Alignment = .center, _ foregroundColor: Color = .red) -> some View {
        let text = Text("Large Frame")
            .foregroundColor(foregroundColor)
            .frame(width: width, height: height, alignment: alignment)
        return text
    }
    
    
}

struct Framing: View {
    var body: some View {
        
        VStack {
            Text("")
                .smallFrame()
            Spacer()
            Text("")
                .mediumFrame()
            Spacer()
            Text("")
                .largeFrame()
        }
        
    }
}

struct Framing_Previews: PreviewProvider {
    static var previews: some View {
        Framing()
    }
}
