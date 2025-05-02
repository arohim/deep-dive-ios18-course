//
//  LanguageOptionView.swift
//  SwiftUIGreetingApp
//
//  Created by Abdulrohim 'Him' Sama on 1/5/2568 BE.
//

import SwiftUI

struct LanguageOptionTapView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        Menu {
            Button("English") {
                language = "en"
                layoutDirectionString = RIGHT_TO_LEFT
            }
            Button("Thai") {
                language = "th"
                layoutDirectionString = LEFT_TO_RIGHT
            }
        } label: {
            Image(systemName: "gearshape.fill")
                .foregroundStyle(.black)
        }
        
    }
}

struct LanguageOptionView: View {
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    
    var body: some View {
        Image(systemName: "gearshape.fill")
            .contextMenu {
                Button("English") {
                    language = "en"
                    layoutDirectionString = RIGHT_TO_LEFT
                }
                Button("Thai") {
                    language = "th"
                    layoutDirectionString = LEFT_TO_RIGHT
                }
            }
    }
}

#Preview {
    LanguageOptionTapView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}
