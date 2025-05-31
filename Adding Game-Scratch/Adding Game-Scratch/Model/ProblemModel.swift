//
//  ProblemModel.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 17/5/2568 BE.
//

import Foundation

struct ProblemModel: Identifiable {
    let id = UUID()
    let number1: Int
    let number2: Int
    let level: Int

    // solutions[0] is the answer
    let solutions: [Int]
    var answer: Int {
        solutions[0]
    }

    func checkSolution(value: Int) -> Bool {
        !solutions.isEmpty && value == answer
    }

    init(level: Int) {
        self.level = level
        let lower = (level - 1) * 5
        let upper = level * 5
        self.number1 = Int.random(in: lower...upper)
        self.number2 = Int.random(in: lower...upper)
        let answer = self.number1 + self.number2

        var newSolution: [Int] = []
        newSolution.append(answer)
        newSolution.append(answer + 10)

        let belowAnswer = answer - 5
        let aboveAnswer = answer + 5

        newSolution.append(Int.random(in: (answer + 1)...aboveAnswer))
        newSolution.append(Int.random(in: belowAnswer..<answer))

        self.solutions = newSolution
    }
}
