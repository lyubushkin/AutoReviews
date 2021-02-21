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
        // tests
        let reviewsBMWX5 = Review.getReviews(by: "BMW X5 2021")
        print("Старт: отзывов по BMW X5 2021 - \(reviewsBMWX5.count)")
        
        let modification = Auto.getModification()
        print("Старт: модификаций всего - \(modification.count)")
        print("Старт: Количество отзывов всего: \(Review.getReviews().count)")
        
        print("Добавляем отзыв по BMW X5 2021...")
        Review.addReview(modification: "BMW X5 2021",
                         title: "Практический Мерседес",
                         content: "Отделка торпеды мягкая, не скрипит")
        
        print("Конец: отзывов по BMW X5 2021 - \(Review.getReviews(by: "BMW X5 2021").count)")
        print("Конец: модификаций всего - \(Auto.getModification().count)")
        print("Конец: Количество отзывов всего: \(Review.getReviews().count)")
}

}
