//
//  AsyncImageView.swift
//  AsyncImage
//
//  Created by Abdulrohim 'Him' Sama on 6/5/2568 BE.
//

import SwiftUI

struct AsyncImageView: View {
    
    let imgUrl: String
    
    var body: some View {
        let gridItem = GridItem(.flexible())
        
        AsyncImage(url: URL(string: imgUrl)) { phase in
            switch phase {
            case .empty:
                Text("Loading...")
            case .success(let img):
                img
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
            case .failure(_):
                Image(systemName: "photo")
                    .imageScale(.large)
            @unknown default:
                Text("unknown")
            }
        }
        
    }
}

#Preview {
    AsyncImageView(imgUrl: "https://t4.ftcdn.net/jpg/00/59/96/75/240_F_59967553_9g2bvhTZf18zCmEVWcKigEoevGzFqXzq.jpg")
}
