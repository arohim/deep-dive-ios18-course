//
//  RecipeViewModel.swift
//  MVVMSample
//
//  Created by Abdulrohim 'Him' Sama on 12/5/2568 BE.
//

import Foundation
import Observation
import SwiftUICore

@Observable class RecipeViewModel: ObservableObject {
    var recipeModels: [RecipeModel] = []
    
    init() {
        recipeModels.append(contentsOf:
            [
                RecipeModel(
                    name: "Hummus",
                    caloriesPer100Grams: 322,
                    recipe: """
                    **Ingredients**
                    - ...
                    - ...
                    - ...
                    - ...
                    - ...
                    """,
                    recipeImage: "IMGhummus",
                    recipeURL: "https://www.inspiredtaste.net/86710/egg-roll-in-a-bowl-recipe/"
                ),
                RecipeModel(
                    name: "Apple Pie",
                    caloriesPer100Grams: 322,
                    recipe: """
                    **Ingredients**
                    - ...
                    - ...
                    - ...
                    - ...
                    - ...
                    """,
                    recipeImage: "IMGApplePie",
                    recipeURL: "https://www.inspiredtaste.net/86710/egg-roll-in-a-bowl-recipe/"
                ),
                RecipeModel(
                    name: "Pizza",
                    caloriesPer100Grams: 322,
                    recipe: """
                    **Ingredients**
                    - ...
                    - ...
                    - ...
                    - ...
                    - ...
                    """,
                    recipeImage: "IMGPizza",
                    recipeURL: "https://www.inspiredtaste.net/86710/egg-roll-in-a-bowl-recipe/"
                ),
                RecipeModel(
                    name: "Pizza",
                    caloriesPer100Grams: 322,
                    recipe: """
                    **Ingredients**
                    - ...
                    - ...
                    - ...
                    - ...
                    - ...
                    """,
                    recipeImage: "IMGPizza",
                    recipeURL: "https://www.inspiredtaste.net/86710/egg-roll-in-a-bowl-recipe/"
                )
            ]
        )
    }
}
