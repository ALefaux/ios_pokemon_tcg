//
//  CardsRemote.swift
//  PokemonTCG
//
//  Created by Axel Lefaux on 11/12/2022.
//

import Foundation

protocol GetCardsRemote {
    func getCards() async throws -> [Card]
}

struct CardsRemoteImpl: GetCardsRemote {
    func getCards() async throws -> [Card] {
        let url = URL(string: "https://api.pokemontcg.io/v2/cards")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let response = try JSONDecoder().decode(Response.self, from: data)
        return response.data.sorted { cardA, cardB in
            cardA.nationalPokedexNumbers.first! < cardB.nationalPokedexNumbers.first!
        }
    }
}
