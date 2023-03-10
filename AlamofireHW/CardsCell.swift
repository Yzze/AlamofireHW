//
//  CardsCell.swift
//  AlamofireHW
//
//  Created by Ян Жигурс on 10.03.2023.
//

import UIKit

class CardsSell: UITableViewCell {
    static let indetifier = String(describing: CardsSell.self)
    
    private lazy var name: UILabel = {
        let name = UILabel()
        name.font = .systemFont(ofSize: 12)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    private lazy var rarity: UILabel = {
        let rarity = UILabel()
        rarity.font = .systemFont(ofSize: 12)
        rarity.translatesAutoresizingMaskIntoConstraints = false
        return rarity
    }()
    
    private lazy var setName: UILabel = {
        let setName = UILabel()
        setName.font = .systemFont(ofSize: 12)
        setName.translatesAutoresizingMaskIntoConstraints = false
        return setName
    }()
    
    private lazy var artist: UILabel = {
        let artist = UILabel()
        artist.font = .systemFont(ofSize: 12)
        artist.translatesAutoresizingMaskIntoConstraints = false
        return artist
    }()
}
