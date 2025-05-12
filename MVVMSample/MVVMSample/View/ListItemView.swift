//
//  ListItemView.swift
//  MVVMSample
//
//  Created by Abdulrohim 'Him' Sama on 12/5/2568 BE.
//

import SwiftUI

struct ListItemView: View {
    let name: String
    let caloriesPer100Grams: Int
    let recipeImage: String
    
    let imageDim: CGFloat = 70
    
    var body: some View {
        HStack {
            VStack (alignment: .leading){
                Text(name)
                    .foregroundStyle(.orange)
                Text("\(caloriesPer100Grams) calories per 100 grams")
                    .font(.caption)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
            }
            .padding()
            Spacer()
            Image(recipeImage)
                .resizable()
                .frame(width: imageDim, height: imageDim)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.white, lineWidth: 1)
                )
                .shadow(color: .white.opacity(0.7), radius: 10, x: 0, y: 0)
        }
        .padding()
        .background(.black)
        .cornerRadius(10)
    }
}

#Preview {
    ListItemView(
        name: "Human",
        caloriesPer100Grams: 500,
        recipeImage: "NoImageYet"
    )
}
