//
//  AdditionGameView.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 17/5/2568 BE.
//

import SwiftUI
import SwiftData

struct AdditionGameView: View {
    private var gameVM = AdditionGameViewModel()
    
    @EnvironmentObject private var highScoreVM: HighScoreViewModel

    @State private var highScoreViewIsPresented = false

    @State private var name: String = ""

    var showHighScore: Bool {
        gameVM.gameOver && highScoreVM.isNewHighScore(score: gameVM.score)
    }

    var showGameOverview: Bool {
        gameVM.gameOver
    }

    var body: some View {
        ZStack {
            GameBackgroundView()

            VStack {
                ScoreLivesView(
                    score: gameVM.score,
                    lives: gameVM.gameModel.lives,
                    maxLives: 3,
                    level: gameVM.gameModel.level
                )

                Spacer()
                BubbleView(
                    textColor: .white,
                    bgColor: Color.purple.opacity(0.7),
                    name: "bubble3",
                    text: "\(gameVM.number1) + \(gameVM.number2)"
                )
                Spacer()

                OptionsView(gameVM: gameVM)
            }
            .padding()
            .blur(radius: showGameOverview ? 5 : 0)
            .disabled(showGameOverview)

            GameOverView()
                .blur(radius: showGameOverview ? 0 : 30)
                .opacity(showGameOverview ? 1 : 0)
                .disabled(!showGameOverview)
                .onTapGesture {
                    gameVM.reset()
                }
        }
        .fullScreenCover(
            isPresented: $highScoreViewIsPresented,
            onDismiss: {
                gameVM.reset()
            }
        ) {
            EnterNewHighScoreView(
                score: gameVM.score,
                name: $name,
                isPresented: $highScoreViewIsPresented
            )
        }
        .onChange(of: showHighScore) { oldValue, newValue in
            highScoreViewIsPresented = newValue
        }
    }
}

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: HighScoreEntity.self, configurations: config)

    AdditionGameView()
        .environmentObject(HighScoreViewModel(modelContext: container.mainContext))
}
