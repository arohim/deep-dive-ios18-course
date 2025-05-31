//
//  ContentView.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 17/5/2568 BE.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            AdditionGameView()
                .tabItem {
                    Image(systemName: "gamecontroller")
                    Text("Game")
                }
            HighScoreView()
                .tabItem {
                    Image(systemName: "list.bullet.clipboard")
                    Text("High Score")
                }
        }
    }
}

#Preview {
    MainView()
}
