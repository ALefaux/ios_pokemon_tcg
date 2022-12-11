//
//  Response.swift
//  PokemonTCG
//
//  Created by Axel Lefaux on 11/12/2022.
//

import Foundation

struct Response: Decodable {
    var data: [Card]
}
