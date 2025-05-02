//
//  ContentView.swift
//  SwiftModifier
//
//  Created by Abdulrohim 'Him' Sama on 30/4/2568 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            LinearGradient(
                colors: [Color.red.opacity(0.5), Color.blue],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            .opacity(0.7)
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("Hello, world!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.red)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(20.0)
                    .shadow(
                        color: Color.yellow,
                        radius: 4.0,
                        x: 4.0,
                        y: 4.0
                    )
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
