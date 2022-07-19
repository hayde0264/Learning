//
//  Publishers.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/18/22.
//

import SwiftUI
import Combine

struct Publishers: View {
    var body: some View {
        Button {
            main()
        } label: {
            Text("Hello")
        }

    }
    func main() {
        var cancellables = Set<AnyCancellable>()
        
        let notificationSubject = PassthroughSubject<Notification, Never>()
        let notificationName = UIResponder.keyboardWillShowNotification
        let notificationCenter = NotificationCenter.default
        
        notificationCenter
            .addObserver(forName: notificationName, object: nil, queue: nil) { notification in
                notificationSubject.send(notification)
            }
        
        notificationSubject
            .sink(receiveValue: { notification in
                print(notification)
            })
            .store(in: &cancellables)
        
        notificationCenter.post(Notification(name: notificationName))
    }
}

struct Publishers_Previews: PreviewProvider {
    static var previews: some View {
        Publishers()
    }
}


