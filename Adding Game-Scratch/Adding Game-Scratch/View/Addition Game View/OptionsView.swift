//
//  OptionsView.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 18/5/2568 BE.
//

import SwiftUI

struct OptionsView: View {
    let gameVM: AdditionGameViewModel
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(gameVM.possibleSolutions, id: \.self) { option in
                let cheatColor: Color = option == gameVM.answer ? .red : .black
                
                BubbleView(
                    textColor: cheatColor,
                    bgColor: .purple.opacity(0.7),
                    name: "bubble2",
                    text: "\(option)"
                )
                .onTapGesture {
                    withAnimation {
                        if gameVM.answer == option {
                            gameVM.increaseScore()
                        } else {
                            gameVM.loseLife()
                        }
                    }
                    gameVM.generateNumbers()
                }
            }
        }
    }
}

#Preview {
    OptionsView(gameVM: AdditionGameViewModel())
}
