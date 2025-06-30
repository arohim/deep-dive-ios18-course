//
//  EnterNewHighScoreView.swift
//  Adding Game-Scratch
//
//  Created by Abdulrohim 'Him' Sama on 18/5/2568 BE.
//

import SwiftUI

struct EnterNewHighScoreView: View {
    let score: Int
    @Binding var name: String
    @Binding var isPresented: Bool
    @EnvironmentObject private var highScoreVM: HighScoreViewModel
    
    var body: some View {
        ZStack {
            BackgroundView(colorList: [.blue, .purple], opacity: 1)
            
            VStack {
                Text("New High Score!")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .padding()
                
                Text("\(score)")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .padding()
                
                TextField("Enter Name", text: $name)
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .autocorrectionDisabled()
                    .background(.white)
                    .cornerRadius(10)
                    .padding()
                
                Button {
                    name = name.isEmpty ? "Anon" : name
                    highScoreVM.addHighScore(name: name, score: Int64(score))
                    isPresented = false
                } label: {
                    Text("Save")
                        .font(.title)
                        .fontWeight(.semibold)
                        .padding()
                        .background(.green)
                        .foregroundStyle(.white)
                        .cornerRadius(10)
//                        .shadow(radius: 5)
                }

                
            }
        }
    }
}

//#Preview {
//    let container: ModelContainer = try ModelContainer(for: HighScoreEntity.self)
//    let highScoreViewModel: HighScoreViewModel HighScoreViewModel(modelContext: container.mainContext)
////    do {
////        container = try ModelContainer(for: HighScoreEntity.self)
////        highScoreViewModel = HighScoreViewModel(modelContext: container.mainContext)
////    } catch {
////        fatalError("Failed to create ModelContainer for HighScoreEntity.")
////    }
//    
//    EnterNewHighScoreView(
//        score: 100,
//        name: .constant(""),
//        isPresented: .constant(true)
//    )
//    .environmentObject(highScoreViewModel)
//}
