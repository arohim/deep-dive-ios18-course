//
//  AsyncImageApp.swift
//  AsyncImage
//
//  Created by Abdulrohim 'Him' Sama on 6/5/2568 BE.
//

import SwiftUI

@main
struct AsyncImageApp: App {
    var body: some Scene {
        WindowGroup {
            AsyncImageView(imgUrl: "https://t4.ftcdn.net/jpg/00/59/96/75/240_F_59967553_9g2bvhTZf18zCmEVWcKigEoevGzFqXzq.jpg")
        }
    }
}
