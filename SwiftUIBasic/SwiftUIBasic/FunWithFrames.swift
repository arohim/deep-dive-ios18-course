//
//  fun_with_frames.swift
//  SwiftUIBasic
//
//  Created by Abdulrohim 'Him' Sama on 4/5/2568 BE.
//

import SwiftUI

struct FunWithFrames: View {
    var body: some View {
        ZStack {
            Text("Upper left")
                .frame(minWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            
            Text("Upper right")
                .frame(minWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
//            
            Text("Bottom left")
                .frame(minWidth: .infinity, maxHeight: .infinity, alignment: .bottomLeading)
//            
            Text("Bottom right")
                .frame(minWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .fontWeight(.semibold)
        .font(.headline)
        .foregroundStyle(.tint)
        .padding()
    }
}

#Preview {
    FunWithFrames()
}
