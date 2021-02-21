//
//  Auto.swift
//  AutoReviews
//
//  Created by Swift on 19.02.2021.
//

struct Auto {
    let brand: String
    let model: String
    let year: String
    
    var modification: String {
        "\(brand) \(model) \(year)"
    }
    
    let reviews: [Review]
}

extension Auto {

    static func getBrands() -> [String] { DataManager.shared.brands }
    
    static func getModels(by brend: String) -> [String] {
        switch brend {
        case "Audi": return DataManager.shared.modelsAudi
        case "BMW": return DataManager.shared.modelsBMW
        default: return DataManager.shared.modelsKia
        }
    }
    
    static func getYears() -> [String] { DataManager.shared.years }
    
    static func getModification() -> [String] { DataManager.shared.modifications }
    
    static func addModification(_ curentModification: String) {
        
        for modification in DataManager.shared.modifications {
            if modification == curentModification { return }
        }

        DataManager.shared.modifications.append(curentModification)
    }

}








