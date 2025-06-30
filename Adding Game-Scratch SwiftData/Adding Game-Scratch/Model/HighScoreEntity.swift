//
//  HighScoreEntity.swift
//  Adding Game-Scratch-SwiftData
//
//  Created by Abdulrohim 'Him' Sama on 31/5/2568 BE.
//

import Foundation
import SwiftData

@Model
class HighScoreEntity: Identifiable {
    let id = UUID()
    var name: String
    let score: Int64
    
    init(name: String, score: Int64) {
        self.name = name
        self.score = score
    }
}
