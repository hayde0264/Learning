//
//  contents.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/13/22.
//

import Foundation
import Combine

//MARK: Functional Reactive Programming
class FunctionalReactiveProgramming {
    private var example1 = [1,2,3].map { $0 * 2 } /* Map allows us to take an array of Int's
                                                     and transform them into something else */
/* Higher Order Function - a function that takes another function or closure
                           as it's parameter
   Pure Order Function - a function that only operates on the arguments
                          it receives
   Stream - think of a stream as an array of values where the values are
            delivered over time. Ex(.onTap)
*/
}


//MARK: Publishers & Subscribers
class PublishersAndSubscribers {
// Everyting starts with a Publisher
    private var example1 = [1,2,3].publisher /* Without a publisher there is nothing to subscribe
                                                to. This code coverts an array to a Publisher that
                                                emits the contents of this array one by one. The
                                                type of this publishers is Publishers.Sequence<[INT],
                                                Never>.*/
/* Every publishers in combine has a Output
   and a Failure. The Output of the publisher
   is the the type of value that it produces.
   For the example1, above, the Output is Int.
*/
// Objects that recieve are called Subscribers
    private var example2 = [1,2,3].publisher.sink(receiveCompletion: { completion in
        print("Publisher completed \(completion)")
    }, receiveValue: { value in
        print("Recieved a value \(value)")
    })                                         /* The sink method that's used in the proceeding
                                                code is defined as an extenion on the publisher.
                                                This means that we use Sink to subscribe to every
                                                possible publisher in Combine because all publishers
                                                must comform to the Publisher Protocol. */
// Any Cancellable
    private var example3 = Notification.Name("com.ElonMusk.customNotification")
    var subscription: AnyCancellable?
    func listenToNotifications() {
        subscription = NotificationCenter.default.publisher(for: example3)
            .sink(receiveValue: { notification in
                print("Recieved a notification!!!")
            })
        NotificationCenter.default.post(name: example3, object: .none)
    }
/* Publishers only perform work, and they
   only publish values if there is a subscriber
   listening and if the subscriber is willing to
   receive values. SINK & ASSIGN create subscribers
   that willing to receive values. Sink and Assign
   reutrn the ANYCANCELLABLE object*/
    
    
}


//MARK: Transforming Publishers
class TransformingPublishers {
    
}


//MARK: Updating UI
class UpdatingUI {
    
}


//MARK: Responding to User Input
class UserInput {
    
}


//MARK: Networking
class Networking {
    
}


//MARK: Futures
class Futures {
    
}


//MARK: Schedulers
class Schedulers {
    
}


//MARK: Building Publishers, Subscribers, and Subscriptions
class PubsSubsScripts {
    
}


//MARK: Debugging
class Debugging {
    
}
