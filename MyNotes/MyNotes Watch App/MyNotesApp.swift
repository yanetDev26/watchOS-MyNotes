//
//  MyNotesApp.swift
//  MyNotes Watch App
//
//  Created by Yanet Rodriguez on 19/08/2023.
//

import SwiftUI

@main
struct MyNotes_Watch_AppApp: App {
    let container = PersistantContainer.shared.container

    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
                    .environment(\.managedObjectContext, container.viewContext)
            }
        }

        //WKNotificationScene(controller: Notifica, category: "myCategory")
    }
}
