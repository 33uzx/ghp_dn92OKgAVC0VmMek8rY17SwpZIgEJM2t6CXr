//
//  AwadApp.swift
//  Awad
//
//  Created by Abdulaziz on 01/06/1446 AH.
//

import SwiftUI


struct AwadApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
