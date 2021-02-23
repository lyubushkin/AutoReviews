//
//  ViewController.swift
//  AutoReviews
//
//  Created by Swift on 19.02.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        title = "Brand"
    }
}
extension TabBarViewController {
    private func setupViewControllers() {
        guard let pickBrandVC = viewControllers?.first as? BrandTableViewController else { return }
        pickBrandVC.brands = Auto.getBrands()
        
        guard let listOfReviewsTableVC = viewControllers?.last as? ListOfReviewsTableViewController else { return }
        listOfReviewsTableVC.reviews = Review.getReviews()
    }
}
