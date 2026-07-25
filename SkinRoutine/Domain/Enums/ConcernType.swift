//
//  ConcernType.swift
//  SkinRoutine
//
//  Created by Canessane Ramya on 25/07/2026.
//

import Foundation

enum ConcernType: String, Decodable {
    case atopic = "Peau atopique"
    case pores = "Pores dilatés"
    case blackHeads = "Points noirs"
    case rosacea = "Rosacée"
    case imperfections = "Imperfections"
    case wrinkles = "Rides"
}
