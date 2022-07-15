//
//  Contents.swift
//  Karate (iOS)
//
//  Created by Hayden Howell on 7/13/22.
//

import Foundation
import CoreData
import UIKit

//MARK: Managed Object Context
class ManagedObjectContext {
/* Think of it as a scratch pad or a
   temporary memory area for containing
   objects.  It's job is to manage
   objects (created and returned). */
    private var example1: ManagedObjectContext = .init()
}


//MARK: Managed Object Model
class ManagedObjectModel {
/* This describes the schema that you
   use in the app. This schema is represented
   by a collection of objects (also known
   as entities). These entities define
   attributes and relationships with other */
    private var example1 : NSManagedObjectModel = .init()
}


//MARK: Persistent Store Coordinator
class PersitentStoreCoordinator {
/* As it's name suggests, it is the
   coordinator of the Core Data Stack.
   This sits between the managed object
   context and the persistent store. It's
   job is responsible for managing different
   persistent object stores and saving the
   objects to the stores.*/
    private var example1: NSPersistentStoreCoordinator = .init()
}


//MARK: Persistent Store
class PersistentStore {
/* This is the repository for your
   data.*/
    private var example1: NSPersistentContainer = .init()
}



struct Persistence {
    static let shared = Persistence()
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        
        container = NSPersistentContainer(name: "Persistence")
        
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        
        container.loadPersistentStores(completionHandler: {description, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
}
public class IceCreme: NSManagedObject {
    @NSManaged public var name: String
    
    @NSManaged public var ratingText: String?
    
    @NSManaged public var summary: String
    
    @NSManaged public var isFavorite: Bool
    
    @NSManaged public var image: Data
}



