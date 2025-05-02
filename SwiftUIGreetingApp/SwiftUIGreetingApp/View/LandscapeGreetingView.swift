//
//  LandscapeGreetingView.swift
//  SwiftUIGreetingApp
//
//  Created by Abdulrohim 'Him' Sama on 1/5/2568 BE.
//

import SwiftUI

struct LandscapeGreetingView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack(alignment: .top, content: {
                LandscapeTitleView()
                Spacer()
                MessagesView()
            })
            .padding()
        }
    }
}

#Preview {
    LandscapeGreetingView()
}
