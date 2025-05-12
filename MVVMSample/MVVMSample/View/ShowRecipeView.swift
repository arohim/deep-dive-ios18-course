//
//  ShowRecipeView.swift
//  MVVMSample
//
//  Created by Abdulrohim 'Him' Sama on 12/5/2568 BE.
//

import SwiftUI

struct ShowRecipeView: View {
    let theRecipe: String
    let imageName: String
    let recipeUrl: String
    
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                ScrollView {
                    Text(.init(theRecipe))
                        .padding()
                    
                    Spacer()
                    
                    Link(destination: URL(string: recipeUrl)!) {
                        ZStack {
                            Image(imageName)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .scaleEffect(0.8)
                            Text("Click image for receipe")
                                .foregroundColor(.orange)
                                .font(.headline)
                                .padding()
                                .background(
                                    Capsule()
                                        .fill(.black.opacity(0.7))
                                )
                        }
                    }
                }
                
            } // .init to show mark down
            
        }
    }
}

#Preview {
    ShowRecipeView(
        theRecipe: """
Key Ingredients
Ground Meat: I’ve used ground turkey in our photos, but you can use ground chicken or ground pork in its place without any changes!
Sesame Oil: You’ll cook the ground meat in toasted sesame oil. It is one of my secrets to this bowl’s incredible flavor! I use the same trick when making my favorite chicken lettuce wraps.
Veggies: The veggies are my favorite part of this recipe! We combine shredded cabbage, carrots, green onion, and bell pepper. As a simple shortcut, you can save some chopping, buy a pre-shredded bag of coleslaw mix, and add the green onion and bell pepper.
Oyster Sauce, Soy Sauce, and Honey: You will combine them to make our sauce. They genuinely make this bowl taste so good. It’s incredible how flavorful it makes our bowl, even though it’s only three ingredients. For the oyster sauce, I love Lee Kum Kee Premium oyster sauce for its flavor (there’s a boat on the label). The use of oyster sauce for this recipe was inspired by our chicken spring rolls!
Cashews and Cilantro: The first time we made this recipe, we felt it was missing something, so we tried again and found that something crunchy, like chopped nuts and a fresh pop of cilantro, really made the difference. Chopped peanuts are great, too.
Optional but Delicious: For a bit of heat, add a drizzle of sriracha chili sauce or make my quick spicy mayo! It’s perfect with this bowl.
""",
        imageName: "IMGhummus",
        recipeUrl: "https://www.inspiredtaste.net/86710/egg-roll-in-a-bowl-recipe/"
    )
}
