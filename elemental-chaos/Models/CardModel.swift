//
//  CardModel.swift
//  elemental-chaos
//
//  Created by Max Paul on 11/26/23.
//

import Foundation

struct Card: Codable, Identifiable {
    var id = UUID() // Add a unique identifier
    let name: String
    let rarity: String
}
