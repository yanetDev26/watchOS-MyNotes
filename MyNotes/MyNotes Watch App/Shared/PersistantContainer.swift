//
//  PersistantContainer.swift
//  MyNotes Watch App
//
//  Created by Yanet Rodriguez on 19/08/2023.
//

import CoreData

struct PersistantContainer {
    static let shared = PersistantContainer()

    let container: NSPersistentContainer

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "MyNotesApp")

        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "dev/null")
        }

        container.loadPersistentStores(completionHandler: {
            (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
}
