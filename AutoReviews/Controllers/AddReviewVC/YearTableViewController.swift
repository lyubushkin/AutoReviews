//
//  YearTableViewController.swift
//  AutoReviews
//
//  Created by Swift on 22.02.2021.
//

import UIKit

class YearTableViewController: UITableViewController {
    
    var modification: String = ""
    var years: [String] { Auto.getYears() }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(modification)"
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return years.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "year", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = years[indexPath.row]
        cell.contentConfiguration = content

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let addReviewVC = segue.destination as? AddReviewViewController else { return }
            addReviewVC.modification = "\(modification) \(years[indexPath.row])"
        }
    }

}
