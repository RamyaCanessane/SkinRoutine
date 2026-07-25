//
//  Product.swift
//  SkinRoutine
//
//  Created by Canessane Ramya on 25/07/2026.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let type: ProductType
    let skinType: SkinType
    let caption: String
    let description: String
    let usage: String
    var isDone: Bool
}
