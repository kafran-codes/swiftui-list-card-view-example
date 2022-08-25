//
//  ContentView.swift
//  ColorCardApp
//
//  Created by Kolmar Kafran on 24/08/22.
//  https://www.linkedin.com/in/kolmar-kafran/
//

import SwiftUI

struct ContentView: View {
    @State private var colorCards: [ColorCard] = ColorCard.sampleData

    var body: some View {
        List {
            ForEach(colorCards) { colorCard in
                NavigationLink(destination: colorCard.theme.mainColor) {
                    CardView(colorCard: colorCard)
                }
                .listRowSeparator(.hidden)
                .listRowBackground(
                    RoundedRectangle(cornerRadius: 5)
                        .background(.clear)
                        .foregroundColor(colorCard.theme.mainColor)
                        .padding(
                            EdgeInsets(
                                top: 2,
                                leading: 10,
                                bottom: 2,
                                trailing: 10
                            )
                        )
                )
            }
            .onDelete { idx in
                colorCards.remove(atOffsets: idx)
            }
        }
        .listStyle(.plain)
        .navigationTitle("Color Cards")
        .toolbar {
            Button {
                colorCards.append(ColorCard(theme: Theme.allCases.randomElement()!))
            } label: {
                Image(systemName: "plus")
            }
        }
    }
}
