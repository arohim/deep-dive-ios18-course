//
//  ImageScrollView.swift
//  AsyncImage
//
//  Created by Abdulrohim 'Him' Sama on 6/5/2568 BE.
//

import SwiftUI

struct ImageScrollView: View {
    @State private var showName = false
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            VStack {
                ForEach(ImgType.allCases, id: \.self) { item in
                    let name = item.rawValue
                    let niceName = name.replacingOccurrences(of: "img", with: "")
                    Image(item.rawValue)
                        .resizable()
                        .frame(
                            width: UIScreen.main.bounds.width * 0.8,
                            height: UIScreen.main.bounds.height * 0.25
                        )
                        .scaledToFill()
                        .cornerRadius(20)
                        .padding()
                        .shadow(radius: 10)
                        .overlay {
                            Text(showName ? niceName.capitalized : "")
                                .foregroundStyle(.white)
                                .font(.title)
                                .fontWeight(.semibold)
                                .shadow(color: .white.opacity(0.7), radius: 5, x: 5, y: 5)
                        }
                        .onTapGesture {
                            withAnimation (.easeIn(duration: 1)) {
                                showName.toggle()
                            }
                        }
                }
            }
        }
    }
}

#Preview {
    ImageScrollView()
}
