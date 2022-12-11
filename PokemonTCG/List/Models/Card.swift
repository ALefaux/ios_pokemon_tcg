//
//  Card.swift
//  PokemonTCG
//
//  Created by Axel Lefaux on 10/12/2022.
//

import Foundation

struct Card: Identifiable, Decodable {
    var id: String
    var name: String
    var images: Images
    var nationalPokedexNumbers: [Int]
    
}

struct Images: Decodable {
    var small: String
    var large: String
}


/*
 {
             "id": "pl3-1",
             "name": "Absol G",
             "supertype": "Pokémon",
             "subtypes": [
                 "Basic",
                 "SP"
             ],
             "level": "59",
             "hp": "70",
             "types": [
                 "Darkness"
             ],
             "attacks": [
                 {
                     "name": "Feint Attack",
                     "cost": [
                         "Darkness"
                     ],
                     "convertedEnergyCost": 1,
                     "damage": "",
                     "text": "Choose 1 of your opponent's Pokémon. This attack does 20 damage to that Pokémon. This attack's damage isn't affected by Weakness, Resistance, Poké-Powers, Poké-Bodies, or any other effects on that Pokémon."
                 },
                 {
                     "name": "Doom News",
                     "cost": [
                         "Darkness",
                         "Colorless",
                         "Colorless"
                     ],
                     "convertedEnergyCost": 3,
                     "damage": "",
                     "text": "Return all Energy cards attached to Absol G to your hand. The Defending Pokémon is Knocked Out at the end of your opponent's next turn."
                 }
             ],
             "weaknesses": [
                 {
                     "type": "Fighting",
                     "value": "×2"
                 }
             ],
             "resistances": [
                 {
                     "type": "Psychic",
                     "value": "-20"
                 }
             ],
             "retreatCost": [
                 "Colorless"
             ],
             "convertedRetreatCost": 1,
             "set": {
                 "id": "pl3",
                 "name": "Supreme Victors",
                 "series": "Platinum",
                 "printedTotal": 147,
                 "total": 153,
                 "legalities": {
                     "unlimited": "Legal"
                 },
                 "ptcgoCode": "SV",
                 "releaseDate": "2009/08/19",
                 "updatedAt": "2018/03/07 22:40:00",
                 "images": {
                     "symbol": "https://images.pokemontcg.io/pl3/symbol.png",
                     "logo": "https://images.pokemontcg.io/pl3/logo.png"
                 }
             },
             "number": "1",
             "artist": "Yusuke Ishikawa",
             "rarity": "Rare Holo",
             "nationalPokedexNumbers": [
                 359
             ],
             "legalities": {
                 "unlimited": "Legal"
             },
             "images": {
                 "small": "https://images.pokemontcg.io/pl3/1.png",
                 "large": "https://images.pokemontcg.io/pl3/1_hires.png"
             },
             "tcgplayer": {
                 "url": "https://prices.pokemontcg.io/tcgplayer/pl3-1",
                 "updatedAt": "2022/12/07",
                 "prices": {
                     "holofoil": {
                         "low": 3.0,
                         "mid": 5.0,
                         "high": 9.16,
                         "market": 8.06
                     },
                     "reverseHolofoil": {
                         "low": 3.59,
                         "mid": 5.43,
                         "high": 13.95,
                         "market": 10.7
                     }
                 }
             },
             "cardmarket": {
                 "url": "https://prices.pokemontcg.io/cardmarket/pl3-1",
                 "updatedAt": "2022/12/07",
                 "prices": {
                     "averageSellPrice": 4.87,
                     "lowPrice": 1.49,
                     "trendPrice": 37.02,
                     "reverseHoloSell": 4.0,
                     "reverseHoloLow": 1.49,
                     "reverseHoloTrend": 5.44,
                     "lowPriceExPlus": 3.2,
                     "avg1": 3.99,
                     "avg7": 3.91,
                     "avg30": 37.05,
                     "reverseHoloAvg1": 5.0,
                     "reverseHoloAvg7": 5.59,
                     "reverseHoloAvg30": 4.45
                 }
             }
         }
 */
