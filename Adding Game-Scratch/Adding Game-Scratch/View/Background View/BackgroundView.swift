//
//  BackgroundView.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 17/5/2568 BE.
//

import SwiftUI

struct BackgroundView: View {
    let colorList: [Color]
    let opacity: Double
    
    var body: some View {
        LinearGradient(
            colors: colorList,
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(opacity)
        .ignoresSafeArea()
    }
}

struct GameBackgroundView: View {
    
    var body: some View {
        LinearGradient(
            colors: [
                Color.purple,
                Color.pink,
                Color.clear
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.7)
        .ignoresSafeArea()
    }
}


struct HighScoreBackgroundView: View {
    
    var body: some View {
        LinearGradient(
            colors: [
                Color.black,
                Color.black,
                Color.gray
            ],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.7)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView(
        colorList: [
            Color.purple,
            Color.pink,
            Color.clear
        ],
        opacity: 0.7
    )
}
