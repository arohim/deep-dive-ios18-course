//
//  BuyNowView.swift
//  BuyNowView
//
//  Created by Abdulrohim 'Him' Sama on 4/5/2568 BE.
//

import SwiftUI

struct BuyNowView: View {
    let price: Double
    let discountPercentage: Int?
    
    var discountedPrice: Double? {
        if let discountPercentage {
            return (Double(100 - discountPercentage) / 100) * price
        } else {
            return nil
        }
    }
    let discountColor: Color
    let bgColor: Color
    let yOffset: Double
    let discountAngle: Double
    
    
    init(
        price: Double,
        discountPercentage: Int?,
        discountColor: Color = .blue,
        bgColor: Color = .red,
        yOffset: Double = -20,
        discountAngle: Double = -10
    ) {
        self.price = price
        self.discountPercentage = discountPercentage
        self.discountColor = discountColor
        self.bgColor = bgColor
        self.yOffset = yOffset
        self.discountAngle = discountAngle
    }
    
    var body: some View {
        VStack {
            HStack {
                if let discountPercentage {
                    Spacer()
                    Text("\(discountPercentage)% OFF!")
                        .foregroundStyle(.white)
                        .font(.title)
                        .padding()
                        .background(.blue)
                        .cornerRadius(12)
//                        .clipShape(.rect(cornerRadius: 15))
                        .shadow(color: .blue, radius: 8)
                        .offset(y: yOffset)
                        .rotationEffect(Angle(degrees: discountAngle))
                }
            }
            HStack {
                Text("Buy Now")
                    .font(.title)
                    .bold()
                Spacer()
                Text("$\(price, specifier: "%0.2f")")
                    .strikethrough(discountPercentage != nil)
                    .foregroundStyle(.white)
                
                if let discountedPrice {
                    Text("$\(discountedPrice, specifier: "%0.2f")")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                    
            }
        }
        .padding()
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .fill(bgColor)
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.white)
            }
        )
//        .border(: .white, width: 1)
        .padding()
        
    }
}

#Preview {
    ZStack {
        Color
            .black
            .opacity(0.7)
            .ignoresSafeArea()
        VStack {
            BuyNowView(price: 20, discountPercentage: 75)
            
            BuyNowView(price: 20, discountPercentage: nil)
        }
        
    }
}
