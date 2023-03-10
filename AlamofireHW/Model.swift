//
//  Model.swift
//  AlamofireHW
//
//  Created by Ян Жигурс on 10.03.2023.
//

struct Cards: Decodable {
    let cards: [Card]
}

struct Card: Decodable {
    let name: String?
    let rarity: String?
    let setName: String?
    let artist: String?
    let text: String?
}
