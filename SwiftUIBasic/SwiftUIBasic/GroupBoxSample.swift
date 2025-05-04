//
//  GroupBoxSample.swift
//  SwiftUIBasic
//
//  Created by Abdulrohim 'Him' Sama on 4/5/2568 BE.
//

import SwiftUI

struct GroupBoxSample: View {
    @State private var enableNotifications = true
    @State private var darkMode = false
    
    var body: some View {
        GroupBox {
            VStack(alignment: .leading) {
                Toggle("Enable Notificaitons", isOn: $enableNotifications)
                Toggle("Dark Mode", isOn: $darkMode)
            }
        } label: {
            Label("Settings", systemImage: "gearshape.fill")
        }
        .padding()

    }
}

#Preview {
    GroupBoxSample()
}
