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
    
    var card: Card? {
        didSet {
            name.text = card?.name
            rarity.text = card?.rarity
            setName.text = card?.setName
            artist.text = card?.artist
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
    
    private func setupHierarchy() {
        addSubview(name)
        addSubview(rarity)
        addSubview(setName)
        addSubview(artist)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: topAnchor, constant: -30),
            name.rightAnchor.constraint(equalTo: rarity.rightAnchor, constant: 190),
            name.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 50),
            name.leftAnchor.constraint(equalTo: leftAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            artist.topAnchor.constraint(equalTo: name.topAnchor),
            artist.rightAnchor.constraint(equalTo: setName.rightAnchor, constant: 190),
            artist.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 15),
            artist.leftAnchor.constraint(equalTo: leftAnchor, constant: 10)
        ])
        
        NSLayoutConstraint.activate([
            rarity.topAnchor.constraint(equalTo: topAnchor, constant: -30),
            rarity.rightAnchor.constraint(equalTo: rightAnchor, constant: 10),
            rarity.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 50),
            rarity.leftAnchor.constraint(equalTo: name.leftAnchor, constant: 190)
        ])
        
        NSLayoutConstraint.activate([
            setName.topAnchor.constraint(equalTo: rarity.topAnchor),
            setName.rightAnchor.constraint(equalTo: rightAnchor, constant: 10),
            setName.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 15),
            setName.leftAnchor.constraint(equalTo: artist.leftAnchor, constant: 190)
        ])
    }
}
