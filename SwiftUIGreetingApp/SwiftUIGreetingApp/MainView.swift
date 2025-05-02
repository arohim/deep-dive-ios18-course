//
//  MainView.swift
//  SwiftUIGreetingApp
//
//  Created by Abdulrohim 'Him' Sama on 1/5/2568 BE.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIPad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    @Binding var language: String
    @Binding var layoutDirectionString: String
    
    var body: some View {
        // Portraint mode?
        if isPortraitPhone || isIPad {
            NavigationStack {
                PortraintGreetingView()
                    .toolbar {
                        ToolbarItem(
                            placement: .topBarTrailing) {
                                LanguageOptionTapView(
                                    language: $language,
                                    layoutDirectionString: $layoutDirectionString
                                )
                            }
                    }
            }
        } else {
            LandscapeGreetingView()
        }
        // Landscape mode?
    }
}

#Preview {
    MainView(
        language: .constant("en"),
        layoutDirectionString: .constant(LEFT_TO_RIGHT)
    )
}
