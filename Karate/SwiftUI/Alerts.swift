//
//  Alerts.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/20/22.
//

import SwiftUI

//MARK: Insert Function
extension AlertsView {
    func returnAlert() -> Alert {
        let alert = Alert(title: Text("Some Title"), message: Text("Some message..."), primaryButton: .default(Text("Print"), action: {
            print("Okay This will be printed")
        }), secondaryButton: .destructive(Text("Delete"), action: {
            print("Okay we will get rid of it")
        }))
        return alert
    }
}


struct AlertsView: View {
    
    
    @State private var showAlert = false
    var body: some View {
        Button("Tap to show alert") {
            showAlert = true
        }
        .alert(isPresented: $showAlert) {
            returnAlert()
        }
    }
}


struct Alerts_Previews: PreviewProvider {
    static var previews: some View {
        AlertsView()
    }
}

