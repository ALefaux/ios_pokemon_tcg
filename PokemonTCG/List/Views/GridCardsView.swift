//
//  GridCardsView.swift
//  PokemonTCG
//
//  Created by Axel Lefaux on 11/12/2022.
//

import SwiftUI

struct GridCardsView: View {
    var cards: [Card]
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(cards) {
                    PokemonCardItemView(card: $0)
                }
            }
            .padding(8)
        }
    }
}

