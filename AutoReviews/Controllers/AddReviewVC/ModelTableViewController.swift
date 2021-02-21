//
//  ModelTableViewController.swift
//  AutoReviews
//
//  Created by Swift on 21.02.2021.
//

import UIKit

class ModelTableViewController: UITableViewController {
    
    var brand = ""
    var models: [String] { Auto.getModels(by: brand) }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "model", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = models[indexPath.row]
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let yearVC = segue.destination as? YearTableViewController else { return }
            yearVC.modification = "\(brand) \(models[indexPath.row])"
        }
    }
    
}
