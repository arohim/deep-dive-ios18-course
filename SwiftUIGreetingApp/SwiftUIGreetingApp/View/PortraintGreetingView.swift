//
//  ContentView.swift
//  SwiftUIGreetingApp
//
//  Created by Abdulrohim 'Him' Sama on 30/4/2568 BE.
//

import SwiftUI

struct PortraintGreetingView: View {
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack (
                alignment: .leading
            ) {
                TitleView()
                //            ForEach(0..<messages.count, id: \.self) { index in
                //                let item = messages[index]
                //                TextView(title: item.text, color: item.color)
                //            }
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    PortraintGreetingView()
}
