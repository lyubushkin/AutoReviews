//
//  ReviewInfoViewController.swift
//  AutoReviews
//
//  Created by Светлана Романенко on 23.02.2021.
//

import UIKit

class ReviewInfoViewController: UIViewController {
    

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var modificationLabel: UILabel!
    @IBOutlet var contentLabel: UILabel!
    
    var review: Review!

    override func viewDidLoad() {
        super.viewDidLoad()

        modificationLabel.text = review.modification
        titleLabel.text = review.title
        contentLabel.text = review.content
    }
    
    @IBAction func backToReviewsButtonPressed() {
        dismiss(animated: true)
    }
}
