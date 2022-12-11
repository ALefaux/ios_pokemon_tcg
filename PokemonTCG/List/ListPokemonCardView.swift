//
//  ListPokemonCardView.swift
//  PokemonTCG
//
//  Created by Axel Lefaux on 10/12/2022.
//

import SwiftUI

struct ListPokemonCardView: View {
    @ObservedObject var viewModel = ListPokemonCardViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if(viewModel.isLoading) {
                    ProgressView()
                } else {
                    GridCardsView(cards: viewModel.cards)
                }
            }
            .navigationTitle("Cartes")
        }
        .onAppear {
            Task {
                try await viewModel.getCards()
            }
        }
    }
}

struct ListPokemonCardView_Previews: PreviewProvider {
    static var previews: some View {
        ListPokemonCardView()
    }
}
