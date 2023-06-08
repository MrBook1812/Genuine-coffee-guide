//
//  CoffeeTableViewController.swift
//  Genuine coffee guide
//
//  Created by Kirill Kniga on 29.03.2023.
//

import UIKit

final class CoffeeTableViewController: UITableViewController {

    let drinks = CoffeeDrink.getCoffeDrinks()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = pumiceColor
        tableView.backgroundColor = pumiceColor
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        drinks.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let drink = drinks[indexPath.row]
        
        content.text = drink.name
        cell.contentConfiguration = content
        cell.backgroundColor = pumiceColor
        navigationItem.title = "Кофейные напитки"
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? DetailsViewController else { return }
            detailVC.drinks = drinks[indexPath.row]
        }
    }
    
}
