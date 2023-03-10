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
}
