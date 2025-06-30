//
//  HighScoreTitle.swift
//  Adding Game
//
//  Created by Ron Erez on 07/07/2023.
//

import SwiftUI

struct HighScoreTitle: View {
    var body: some View {
        HStack {
            VtextImage(
                imageName: "creature0",
                text: "Rank",
                dim: 25)
            VtextImage(
                imageName: "creature1",
                text: "Score",
                dim: 25)
            VtextImage(
                imageName: "creature2",
                text: "Name",
                dim: 25)
        }.padding(.horizontal)
    }
}


struct HighScoreTitle_Previews: PreviewProvider {
    static var previews: some View {
        HighScoreTitle()
    }
}
