//
//  ViewController.swift
//  AlamofireHW
//
//  Created by Ян Жигурс on 10.03.2023.
//

import UIKit

class TableViewController: UIViewController {

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
