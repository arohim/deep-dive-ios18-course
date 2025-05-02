//
//  TextView.swift
//  SwiftUIGreetingApp
//
//  Created by Abdulrohim 'Him' Sama on 30/4/2568 BE.
//

import SwiftUI

struct TextView: View {
    
    let title: LocalizedStringKey
    @State var color: Color
    let colors: [Color] = [
        .red,
        .green,
        .blue,
        .orange,
        .yellow,
        .purple,
        Color(red: 0.5, green: 0, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 207/255, blue: 240/255),
        Color(red: 1, green: 215/255, blue: 0)
    ]
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        if isIPad {
            .largeTitle
        } else {
            .body
        }
    }
    
    var body: some View {
        Text(title)
            .font(font)
            .fontWeight(.semibold)
            .padding()
            .foregroundColor(Color.white)
            .background(color.opacity(0.47))
            .cornerRadius(20.0)
            .shadow(
                color: color,
                radius: 5.0,
                x: 5.0,
                y: 5.0
            )
            .onTapGesture {
                withAnimation {
                    color = colors.randomElement() ?? .red
                }
            }
    }
}

#Preview {
    TextView(title: "title_1", color: Color.green)
    TextView(title: "title_2", color: Color.green)
}
