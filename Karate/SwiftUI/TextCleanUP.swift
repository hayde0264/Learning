//
//  TextCleanUP.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/16/22.
//

import SwiftUI


//MARK: Extension
extension Text {
    func commonstyle(_ font: Font = .body, _ fontWeight: Font.Weight = .heavy, _ foregroundColor: Color = .red) -> Text {
        return self
            .font(font)
            .fontWeight(fontWeight)
            .foregroundColor(foregroundColor)
    }
    
    func bigStyle(_ font: Font = .largeTitle, _ fontWeight: Font.Weight = .bold, _ foregroundColor: Color = .red) -> Text {
        return self
            .font(font)
            .fontWeight(fontWeight)
            .foregroundColor(foregroundColor)
    }
}

struct TextCleanUP: View {
    var body: some View {
        Text("Hello World")
            .commonstyle()
        Text("Hello World")
            .bigStyle()
    
    }
}

struct TextCleanUP_Previews: PreviewProvider {
    static var previews: some View {
        TextCleanUP()
    }
}
