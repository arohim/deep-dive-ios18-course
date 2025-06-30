//
//  AdditionGameViewModel.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 17/5/2568 BE.
//

import Foundation
import Observation

@Observable class AdditionGameViewModel {
    var gameModel: GameModel = GameModel.defaultGame

    private var problemCount = 0
    
    let nextLevelBound = 5
    let maxIncreaseScore = 10

    var score: Int {
        gameModel.score
    }

    // For example if: nextLevelBound = 5
    // 5, 10, 15, 20, 25, 30
    var timeToMoveUpToNextLevel: Bool {
        problemCount % nextLevelBound == 0
    }
    var number1: Int {
        gameModel.currentProblem.number1
    }
    var number2: Int {
        gameModel.currentProblem.number2
    }
    var possibleSolutions: [Int] {
        gameModel.currentProblem.solutions.shuffled()
    }
    var answer: Int {
        gameModel.currentProblem.answer
    }
    var gameOver: Bool {
        gameModel.gameOver
    }
    
    func generateNumbers() {
        gameModel.currentProblem = ProblemModel(level: gameModel.level)
        
        problemCount += 1
        
        if timeToMoveUpToNextLevel {
            gameModel.level += 1
        }
    }
    
    func increaseScore() {
        gameModel.score += min(gameModel.level, maxIncreaseScore)
    }
    
    func loseLife() {
        gameModel.lives = max(gameModel.lives - 1, 0)
        gameModel.score = max(gameModel.score - 2, 0)
    }
    
    func reset() {
        gameModel = GameModel.defaultGame
        problemCount = 0
    }

}
