//
//  MessagesView.swift
//  SwiftUIGreetingApp
//
//  Created by Abdulrohim 'Him' Sama on 1/5/2568 BE.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "title_1", color: .green),
        .init(text: "title_2", color: .gray),
        .init(text: "title_3", color: .yellow),
        .init(text: "title_4", color: .red),
        .init(text: "title_5", color: .purple)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) { item in
                TextView(title: item.text, color: item.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
