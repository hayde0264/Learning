//
//  TextView.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/25/22.
//

import SwiftUI

extension Text {
    //Number Formatting
    func numberFormat(_ number: Float) -> Text {
        let text = Text("My Number: \(number.formatted(.currency(code: "USD")))")
        return text
    }
    //Date Formatting
    func dateFormat(_ date: Date) -> Text {
        let dateFormat = Text(date.formatted(date: .abbreviated, time: .omitted))
        return dateFormat
    }
    //Timer Formatting
    func timerFormat(_ date: Date) -> Text {
        let timerFormat = Text(date, style: .time)
        return timerFormat
    }
}


struct TextView: View {
    
    let number: Float = 39.222
    let today = Date()
    
    var body: some View {
        VStack {
            
            Text("")
                .numberFormat(number)
                Divider()
            Text("")
                .dateFormat(today)
                Divider()
            Text("")
                .timerFormat(today)
            
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}

