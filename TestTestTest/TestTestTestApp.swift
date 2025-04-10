//
//  TestTestTestApp.swift
//  TestTestTest
//
//  Created by Kenneth B. Jørgensen on 10/04/2025.
//

import SwiftUI

@main
struct TestTestTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
