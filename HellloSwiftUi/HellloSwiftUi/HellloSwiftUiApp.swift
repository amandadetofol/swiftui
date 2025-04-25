//
//  HellloSwiftUiApp.swift
//  HellloSwiftUi
//
//  Created by Amanda Constante on 14/04/25.
//

import SwiftUI

@main
struct HellloSwiftUiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
