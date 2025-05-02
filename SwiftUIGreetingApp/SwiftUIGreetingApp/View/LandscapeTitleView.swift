//
//  TitleView.swift
//  SwiftUIGreetingApp
//
//  Created by Abdulrohim 'Him' Sama on 1/5/2568 BE.
//

import SwiftUI

struct LandscapeTitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated: Bool = false
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 180)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(
            colors: [.pink, .purple, .blue, .orange, .yellow],
            center: .center,
            angle: .zero
        )
    }
    
    @State var subTitle = "Exploring iOS Programming"
    
    var body: some View {
        VStack (alignment: .leading, content: {
            VStack(alignment: .leading, spacing: 0, content: {
                Text("Greeting")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subTitle)
                    .font(.headline)
                    .fontWeight(.thin)
            })
            Circle()
                .strokeBorder(
                    angularGradient,
                    lineWidth: lineWidth
                )
                .rotationEffect(isRotated ? .zero : angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation(Animation.spring()) {
                        isRotated.toggle()
                    }
                }
        })
        
    }
}

#Preview {
    VStack {
        LandscapeTitleView()
        Spacer()
    }
    .padding()
}
