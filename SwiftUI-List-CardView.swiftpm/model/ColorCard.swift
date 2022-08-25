//
//  ColorCard.swift
//  ColorCardApp
//
//  Created by Kolmar Kafran on 24/08/22.
//  https://www.linkedin.com/in/kolmar-kafran/
//

import Foundation

struct ColorCard: Identifiable {
    let id = UUID()
    var theme: Theme
}

extension ColorCard {
    static let sampleData: [ColorCard] = [
        ColorCard(
            theme: Theme.allCases[0]
        ),
        ColorCard(
            theme: Theme.allCases[1]
        ),
        ColorCard(
            theme: Theme.allCases[2]
        ),
    ]
}
