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
    @IBOutlet var addButton: UIButton!
    
    var modification = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        modificationLabel.text = "Review about \(modification):"
    }
    
    @IBAction func addNewReviewButtonPressed() {
        guard let titleReviewText = titleReviewTextField.text else { return }
        guard let contentReviewText = contentReviewTextField.text else { return }

        if titleReviewText == "" || contentReviewText == "" {
            checkEmptyFieldsAlert()
            return }
        
        Review.addReview(modification: modification, title: titleReviewText, content: contentReviewText)
        
        dismiss(animated: true)
    }
    
    private func checkEmptyFieldsAlert() {
        let alert = UIAlertController(title: "Textfields is empty",
                                      message: "Please, add your review for \(modification)",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "ОК",
                                     style: .default,
                                     handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }
}

