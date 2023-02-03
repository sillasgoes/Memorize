//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Evo Systems on 21/07/22.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let persistenceController = PersistenceController.shared
    let viewModel = MemoryGameViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: viewModel)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
