//
//  ViewController.swift
//  AutoReviews
//
//  Created by Swift on 19.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataManager = DataManager.shared
        
        let rewies = Review.getReviews(by: "BMW X5 2015")
        
        print("\(rewies[0].content)")
}

}
