//
//  ScoreLivesView.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 18/5/2568 BE.
//

import SwiftUI

struct ScoreLivesView: View {
    let score: Int
    let lives: Int
    let maxLives: Int
    let level: Int

    var body: some View {
        HStack (alignment: .top){
            TitleValueView(
                title: "Score",
                value: score
            )
            TitleValueView(
                title: "Level",
                value: level
            )
            Spacer()
            LivesView(
                imageName: Creatures.creature0,
                numLives: lives,
                maxLives: maxLives
            )
        }
        .padding()
    }
}

struct LivesView: View {
    let imageName: Creatures
    let numLives: Int
    let dim = 48.0
    let maxLives: Int

    var body: some View {
        HStack{
            ForEach(0..<maxLives, id: \.self) { index in
                let opacity = (maxLives - index) > numLives ? 0.2 : 1.0

                Image(imageName.rawValue)
                    .resizable()
                    .scaledToFit()
                    .frame(width: dim, height: .infinity)
                    .opacity(opacity)
            }
        }
    }
}

struct TitleValueView: View {
    let title: String
    let value: Int

    var body: some View {
        VStack {
            Text(title)
            Text("\(value)")
        }
        .font(.headline)
        .fontWeight(.bold)
        .foregroundStyle(.white)
    }
}

#Preview {
    ZStack {
        GameBackgroundView()
        ScoreLivesView(
            score: 10,
            lives: 1,
            maxLives: 3,
            level: 1
        )
    }
}
