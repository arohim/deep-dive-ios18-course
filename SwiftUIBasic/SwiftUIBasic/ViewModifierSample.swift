//
//  ViewModifier.swift
//  SwiftUIBasic
//
//  Created by Abdulrohim 'Him' Sama on 4/5/2568 BE.
//

import SwiftUI

struct AlignModifier : ViewModifier {
    
    let alignment: Alignment
    
    init(alignment: Alignment = .center) {
        self.alignment = alignment
    }
    
    func body(content: Content) -> some View {
        content
            .frame(minWidth: .infinity, maxHeight: .infinity, alignment: alignment)
    }
}

extension View {
    func align(_ alignment: Alignment) -> some View {
        self
            .modifier(AlignModifier(alignment: alignment))
    }
}

struct ViewModifierSample: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .align(.topLeading)
//            .modifier(AlignModifier(alignment: .topTrailing))
    }
}

#Preview {
    ViewModifierSample()
}
