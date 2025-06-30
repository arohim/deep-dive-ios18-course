//
//  GameOverView.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 18/5/2568 BE.
//

import SwiftUI

struct GameOverView: View {
    var body: some View {
        ZStack {
            Color.red.opacity(0.8)
            Label {
                Text("Game Over")
                Image(systemName: "arrowshape.turn.up.backward.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundStyle(.yellow)
                    .frame(width: 50, height: 50)
            } icon: {
                Image(Creatures.creature5.rawValue)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding()
                    .background(.green)
                    .clipShape(Circle())
            }
            .font(.title)
            .fontWeight(.bold)
            .padding()
            .background(.blue)
            .foregroundStyle(.white)
            .cornerRadius(10)
            .shadow(radius: 3)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    GameOverView()
}
