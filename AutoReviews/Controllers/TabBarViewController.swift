//
//  ViewController.swift
//  AutoReviews
//
//  Created by Swift on 19.02.2021.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let brands = Auto.getBrands()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
}

extension TabBarViewController {
    private func setupViewControllers() {
        guard let pickBrandVC = viewControllers?.first as? BrandTableViewController else { return }
        pickBrandVC.brands = brands
    }
}
