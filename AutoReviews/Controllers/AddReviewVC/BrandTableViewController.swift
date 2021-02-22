//
//  BrandTableViewController.swift
//  AutoReviews
//
//  Created by Swift on 21.02.2021.
//

import UIKit

class BrandTableViewController: UITableViewController {
    
    var brands: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { brands.count }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "brand", for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = brands[indexPath.row]
        content.image = UIImage(named: "\(content.text?.lowercased() ?? "")")
        cell.contentConfiguration = content

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        47
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let modelVC = segue.destination as? ModelTableViewController else { return }
            modelVC.brand = brands[indexPath.row]
        }
    }
}
