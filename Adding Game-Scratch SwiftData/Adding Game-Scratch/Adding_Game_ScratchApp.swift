//
//  Adding_Game_ScratchApp.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 17/5/2568 BE.
//

import SwiftData
import SwiftUI

@main
struct Adding_Game_ScratchApp: App {

    let container: ModelContainer

    let highScoreViewModel: HighScoreViewModel

    init() {
        do {
            container = try ModelContainer(for: HighScoreEntity.self)
            highScoreViewModel = HighScoreViewModel(modelContext: container.mainContext)
        } catch {
            fatalError("Failed to create ModelContainer for HighScoreEntity.")
        }
    }

    var body: some Scene {
        WindowGroup {
            MainView()
//                .modelContainer(for: HighScoreEntity.self)
                .environmentObject(highScoreViewModel)
        }
    }
}
