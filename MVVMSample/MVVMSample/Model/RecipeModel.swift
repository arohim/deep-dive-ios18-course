//
//  RecipeModel.swift
//  MVVMSample
//
//  Created by Abdulrohim 'Him' Sama on 12/5/2568 BE.
//

import Foundation

struct RecipeModel : Identifiable {
    let id = UUID()
    let name: String
    let caloriesPer100Grams: Int
    let recipe: String
    let recipeImage: String
    let recipeURL: String
}
