//
//  CardView.swift
//  ColorCardApp
//
//  Created by Kolmar Kafran on 24/08/22.
//  https://www.linkedin.com/in/kolmar-kafran/
//

import SwiftUI

struct CardView: View {
    let colorCard: ColorCard

    var body: some View {
        Text(colorCard.theme.name)
            .foregroundColor(colorCard.theme.accentColor)
            .font(.headline)
            .padding(
                EdgeInsets(
                    top: 25,
                    leading: 5,
                    bottom: 25,
                    trailing: 5
                )
            )
    }
}
