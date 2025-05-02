//
//  SwiftUIGreetingAppApp.swift
//  SwiftUIGreetingApp
//
//  Created by Abdulrohim 'Him' Sama on 30/4/2568 BE.
//

import SwiftUI

@main
struct SwiftUIGreetingAppApp: App {
//    @State private var language: String = "en"
//    @State private var layoutDirectionString: String = RIGHT_TO_LEFT
    
    @AppStorage("language") var language: String = "en"
    @AppStorage("languageDirectionString") var languageDirectionString: String = LEFT_TO_RIGHT
    
    var layoutDirection: LayoutDirection {
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    var body: some Scene {
        WindowGroup {
            MainView(
                language: $language,
                layoutDirectionString: $languageDirectionString
            )
            .environment(\.locale, Locale(identifier: language))
            .environment(\.layoutDirection, layoutDirection)
        }
    }
}
