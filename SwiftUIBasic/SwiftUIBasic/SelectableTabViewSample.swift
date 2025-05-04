//
//  SelectableTabViewSample.swift
//  SwiftUIBasic
//
//  Created by Abdulrohim 'Him' Sama on 4/5/2568 BE.
//

import SwiftUI

enum WatchType {
    case watch, sleep, browse
}

struct SelectableTabViewSample: View {
    @State private var selectedTab: WatchType = .watch
    
    var body: some View {
        TabView {
            Tab("Requests", systemImage: "paperplane") {
                Text("R")
            }


            Tab("Account", systemImage: "person.crop.circle.fill") {
                Text("Account")
            }

            TabSection("Messages") {
                Tab("Received", systemImage: "tray.and.arrow.down.fill") {
                    Text("Received")
                }

                Tab("Sent", systemImage: "tray.and.arrow.up.fill") {
                    Text("Sent")
                }

                Tab("Drafts", systemImage: "pencil") {
                    Text("Drafts")
                }
            }
        }
        .tabViewStyle(.sidebarAdaptable)
    }
}

#Preview {
    SelectableTabViewSample()
}
