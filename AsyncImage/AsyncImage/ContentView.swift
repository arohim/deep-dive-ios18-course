//
//  ContentView.swift
//  AsyncImage
//
//  Created by Abdulrohim 'Him' Sama on 6/5/2568 BE.
//

import SwiftUI

struct ContentView: View {
    @State private var scaleToFit = true
    
    var body: some View {
        if scaleToFit {
            Image(imgLightening1)
                .resizable()
//                .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(20)
                .padding()
                .onTapGesture {
                    scaleToFit.toggle()
                }
        } else {
            Image(imgLightening1)
                .resizable()
                .frame(
                    width: UIScreen.main.bounds.width * 0.8,
                    height: UIScreen.main.bounds.height * 0.25
                )
                .aspectRatio(contentMode: .fill)
                .cornerRadius(20)
                .padding()
                .onTapGesture {
                    scaleToFit.toggle()
                }
        }
    }
}

#Preview {
    ContentView()
}
