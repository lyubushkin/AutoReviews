//
//  DataManager.swift
//  AutoReviews
//
//  Created by Swift on 19.02.2021.
//

class DataManager {
    
    static let shared = DataManager()
    
    let brands = ["Audi", "BMW", "Kia"]
    
    let modelsAudi = ["A4", "A5", "A6", "A7"]
    let modelsBMW = ["X3", "X5", "5er", "7er"]
    let modelsKia = ["Rio", "Cerato", "Sorento","K5"]
    
    let years = ["2010","2015","2017","2019","2021"]
    
    var modifications = ["BMW X5 2015","Audi A6 2017","Kia Rio 2021","BMW 5er 2020"]
    
    var reviews = [Review(modification: "BMW X5 2015",
                          title: "Бумер зачет",
                          content: "Дорогое обслуживание только..."),
                   Review(modification: "Audi A6 2017",
                          title: "Ауди пушка!",
                          content: "С нуля до сотки за 5 сек..."),
                   Review(modification: "Kia Rio 2021",
                          title: "Стоит своих денег",
                          content: "Немного шумновата"),
                   Review(modification: "BMW 5er 2020",
                          title: "Хороший седан",
                          content: "Статусный, быстрый, малоугоняемый.")]

    private init() {}
}
