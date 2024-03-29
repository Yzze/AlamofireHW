//
//  ViewController.swift
//  AlamofireHW
//
//  Created by Ян Жигурс on 10.03.2023.
//

import UIKit
import Alamofire

class TableViewController: UIViewController {

    private var newCard = [Card]()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.register(CardsSell.self, forCellReuseIdentifier: CardsSell.indetifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "✨ Magic cards ✨"
        navigationController?.navigationBar.prefersLargeTitles = true
        fetchForCards()
        setupHierarchy()
        setupLayout()
    }
    
    func fetchForCards() {
        let request = AF.request("https://api.magicthegathering.io/v1/cards")
        request.responseDecodable(of: Cards.self) { (data) in
            guard let car = data.value else { return }
            let cards = car.cards
            self.newCard = cards
            self.tableView.reloadData()
        }
    }
    
    func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor)
        ])
    }
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newCard.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cardsCell = tableView.dequeueReusableCell(withIdentifier: CardsSell.indetifier, for: indexPath) as? CardsSell else {return UITableViewCell()}
        cardsCell.card = self.newCard[indexPath.row]
        cardsCell.accessoryType = .detailButton
        return cardsCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let detailView = DetailViewController()
        detailView.cardCharacteristics = newCard[indexPath.row]
        navigationController?.pushViewController(detailView, animated: true)
    }
}
