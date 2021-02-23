//
//  ListOfReviewsTableViewController.swift
//  AutoReviews
//
//  Created by Светлана Романенко on 23.02.2021.
//

import UIKit

class ListOfReviewsTableViewController: UITableViewController {
    
    // MARK: - Private Properties
    
    var reviews: [Review] = []

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        reviews.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "resultReview", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let review = reviews[indexPath.row]

        content.text = review.modification
        content.secondaryText = review.title
        cell.contentConfiguration = content
        
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            reviews.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else { return }
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let reviewInfoVC = segue.destination as! ReviewInfoViewController
            reviewInfoVC.review = reviews[indexPath.row]
        }
    }
}
