//
//  ContentView.swift
//  SwiftUIBasic
//
//  Created by Abdulrohim 'Him' Sama on 2/5/2568 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var fullText: String = "This is some editable text..."
    @State private var username: String = ""

    
    var body: some View {
        ZStack {
            Color
                .gray
                .opacity(0.7)
                .ignoresSafeArea()
            
            TextField(
                   "User name (email address)",
                   text: $username
               )
            
            Grid {
                GridRow {
                    TextEditor(text: $fullText)
                    RoundedRectangle(cornerRadius:  20)
                        .fill(.blue)
                    RoundedRectangle(cornerRadius:  20)
                        .fill(.blue)
                    RoundedRectangle(cornerRadius:  20)
                        .fill(.blue)
                }
                GridRow {
                    RoundedRectangle(cornerRadius:  20)
                        .fill(.blue)
                    RoundedRectangle(cornerRadius:  20)
                        .fill(.orange)
                        .gridCellColumns(2)
                }
                GridRow {
                    RoundedRectangle(cornerRadius:  20)
                        .fill(.blue)
                    RoundedRectangle(cornerRadius:  20)
                        .fill(.orange)
                        .gridCellColumns(2)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
