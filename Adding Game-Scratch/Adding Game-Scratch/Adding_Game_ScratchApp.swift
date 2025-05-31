//
//  Adding_Game_ScratchApp.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 17/5/2568 BE.
//

import SwiftUI
@main
struct Adding_Game_ScratchApp: App {
    @StateObject var highScoreViewModel = HighScoreViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(highScoreViewModel)
        }
    }
}
