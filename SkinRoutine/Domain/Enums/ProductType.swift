//
//  ProductType.swift
//  SkinRoutine
//
//  Created by Canessane Ramya on 25/07/2026.
//

import Foundation

enum ProductType: String, Decodable {
    case moisturizer = "Crème hydratante"
    case cleanser = "Nettoyant visage"
    case spf = "Crème solaire"
    case cleansingOil = "Huile lavante"
    case serum = "Sérum"
    case makeUpRemover = "Démaquillant"
    
    var imageName: String {
        switch self {
        case .moisturizer:
            return "cremeHydratante"
        
        case .cleanser:
            return "nettoyantVisage"
        
        case .spf:
            return "cremeSolaire"
        
        case .cleansingOil:
            return "huileLavante"
        
        case .serum:
            return "serum"
        
        case .makeUpRemover:
            return "demaquillant"
        }
    }
}
