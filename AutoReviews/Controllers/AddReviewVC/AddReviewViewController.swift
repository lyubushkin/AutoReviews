//
//  AddReviewViewController.swift
//  AutoReviews
//
//  Created by Swift on 22.02.2021.
//

import UIKit

class AddReviewViewController: UIViewController {
    
    @IBOutlet var titleReviewTextField: UITextField!
    @IBOutlet var contentReviewTextField: UITextView!
    @IBOutlet var modificationLabel: UILabel!
    
    var modification = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modificationLabel.text = "Review about \(modification):"
    }
    
    @IBAction func addNewReviewButtonPressed() {
        guard
            let titleReviewText = titleReviewTextField.text,
            let contentReviewText = contentReviewTextField.text
        else { return }
        
        Review.addReview(modification: modification, title: titleReviewText, content: contentReviewText)
    }    
}
