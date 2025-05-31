//
//  GameModel.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 17/5/2568 BE.
//

import Foundation

struct GameModel: Identifiable {
    let id = UUID()
    var level: Int
    var score: Int
    var speed: Int
    var lives: Int
    var currentProblem: ProblemModel

    var gameOver: Bool {
        lives == 0
    }

    init(level: Int, score: Int, speed: Int, lives: Int) {
        self.level = level
        self.score = score
        self.speed = speed
        self.lives = lives

        let currentProblem = ProblemModel(level: level)
        self.currentProblem = currentProblem
    }

    mutating func updateScore(value: Int) {
        let isCorrect =
            currentProblem
            .checkSolution(value: value)

        if isCorrect {
            self.score += level
        } else {
            lives -= 1
        }
    }

    static let defaultGame = GameModel(
        level: 1,
        score: 0,
        speed: 1,
        lives: 3
    )

}
