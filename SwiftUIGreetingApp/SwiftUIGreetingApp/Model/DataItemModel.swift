//
//  DataItemModel.swift
//  SwiftUIGreetingApp
//
//  Created by Abdulrohim 'Him' Sama on 1/5/2568 BE.
//

import Foundation
import SwiftUICore

struct DataItemModel: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let color: Color
}
