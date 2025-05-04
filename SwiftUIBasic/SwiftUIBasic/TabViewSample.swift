//
//  TabViewSample.swift
//  SwiftUIBasic
//
//  Created by Abdulrohim 'Him' Sama on 4/5/2568 BE.
//

import SwiftUI

struct TabViewSample: View {
    var body: some View {
        TabView {
            Tab("Watch", systemImage: "play") {
                Text("Watching something")
            }
            Tab("Read", systemImage: "book.pages.fill") {
                Text("Reading to book")
            }
            Tab(role: .search) {
                Text("Search this App...")
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    TabViewSample()
}
