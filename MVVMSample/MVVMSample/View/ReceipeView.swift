//
//  ContentView.swift
//  MVVMSample
//
//  Created by Abdulrohim 'Him' Sama on 12/5/2568 BE.
//

import SwiftUI

struct ReceipeView: View {
    var receipeViewModel: RecipeViewModel = RecipeViewModel()
    
    var body: some View {
        NavigationStack {
            List(self.receipeViewModel.recipeModels) { item in
                NavigationLink {
//                    Text("Destination: Show \(item.name) recipe")
                    ShowRecipeView(theRecipe: item.recipe, imageName: item.recipeImage, recipeUrl: item.recipeURL)
                        .navigationBarTitle("", displayMode: .inline)
                } label: {
                    ListItemView(
                        name: item.name,
                        caloriesPer100Grams: item.caloriesPer100Grams,
                        recipeImage: item.recipeImage
                    )
                }
            }
            .navigationTitle("Recipes")
        }
    }
}

#Preview {
    ReceipeView()
}
