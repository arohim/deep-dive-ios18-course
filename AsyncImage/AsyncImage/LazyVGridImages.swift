//
//  LazyVGridImages.swift
//  AsyncImage
//
//  Created by Abdulrohim 'Him' Sama on 7/5/2568 BE.
//

import SwiftUI

struct LazyVGridImages: View {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: columns, spacing: 8) {
                ForEach(ImgType.allCases, id: \.self) { img in
                    Image(img.rawValue)
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(10)
                        .shadow(radius: 20)
                }
            }
        }
    }
}

#Preview {
    LazyVGridImages()
}
