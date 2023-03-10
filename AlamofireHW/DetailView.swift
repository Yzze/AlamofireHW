//
//  DetailView.swift
//  AlamofireHW
//
//  Created by Ян Жигурс on 10.03.2023.
//

import UIKit

class DetailViewController: UIViewController {
    
    private lazy var name: UILabel = {
        var name = UILabel()
        name.font = .boldSystemFont(ofSize: 20)
        name.translatesAutoresizingMaskIntoConstraints = false
        return name
    }()
    
    private lazy var artist: UILabel = {
        var artist = UILabel()
        artist.font = .systemFont(ofSize: 15)
        artist.translatesAutoresizingMaskIntoConstraints = false
        return artist
    }()
    
    private lazy var setName: UILabel = {
        var setName = UILabel()
        setName.font = .systemFont(ofSize: 15)
        setName.textAlignment = .center
        setName.contentMode = .scaleToFill
        setName.numberOfLines = 0
        setName.translatesAutoresizingMaskIntoConstraints = false
        return setName
    }()
    
    private lazy var text: UILabel = {
        let text = UILabel()
        text.textAlignment = .center
        text.numberOfLines  = 5
        text.font = .italicSystemFont(ofSize: 16)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    var cardCharacteristics: Card? {
        didSet {
            self.name.text = cardCharacteristics?.name
            self.artist.text = cardCharacteristics?.artist
            self.setName.text = cardCharacteristics?.setName
            self.text.text = cardCharacteristics?.text
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    private func setupHierarchy() {
        view.addSubview(name)
        view.addSubview(artist)
        view.addSubview(setName)
        view.addSubview(text)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            name.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            name.topAnchor.constraint(equalTo: view.topAnchor, constant: -450),
            name.bottomAnchor.constraint(equalTo: artist.bottomAnchor, constant: 20),
            
            artist.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            artist.topAnchor.constraint(equalTo: name.topAnchor, constant: 100),
            artist.bottomAnchor.constraint(equalTo: setName.bottomAnchor, constant: 20),
            
            setName.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            setName.topAnchor.constraint(equalTo: artist.topAnchor, constant: 100),
            setName.bottomAnchor.constraint(equalTo: text.bottomAnchor, constant: 20),
            
            text.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            text.widthAnchor.constraint(equalToConstant: 350),
            text.topAnchor.constraint(equalTo: setName.topAnchor, constant: 150),
            text.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 250),
        ])
    }
}
