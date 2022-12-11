//
//  PokemonCardItemView.swift
//  PokemonTCG
//
//  Created by Axel Lefaux on 11/12/2022.
//

import SwiftUI

struct PokemonCardItemView: View {
    var card: Card
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(.white)
                .shadow(radius: 2)
            VStack {
                AsyncImage(url: URL(string: card.images.small), scale: 2)
                Text(card.name)
            }
            .padding(8)
        }
    }
}
