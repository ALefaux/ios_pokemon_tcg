//
//  ListPokemonCardViewModel.swift
//  PokemonTCG
//
//  Created by Axel Lefaux on 11/12/2022.
//

import Foundation

class ListPokemonCardViewModel: ObservableObject {
    private var cardsRemote: GetCardsRemote = CardsRemoteImpl()
    
    @Published var isLoading: Bool = false
    @Published var cards: [Card] = []
    
    @MainActor
    func getCards() async throws {
        isLoading = true
        
        cards = try await cardsRemote.getCards()
        
        isLoading = false
    }
}

