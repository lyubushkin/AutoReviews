//
//  Review.swift
//  AutoReviews
//
//  Created by Swift on 19.02.2021.
//

struct Review {
    let modification: String
    let title: String
    let content: String
}

extension Review {
    
    static func addReview(modification: String, title: String, content: String) {
        DataManager.shared.reviews.append(Review(modification: modification,
                                                 title: title,
                                                 content: content))
    }
    
    static func getReviews(by modification: String) -> [Review] {
        var reviews: [Review] = []
        
        for index in DataManager.shared.reviews {
            if index.modification == modification {
                reviews.append(index)
            }
        }
        
        return reviews
    }
}
