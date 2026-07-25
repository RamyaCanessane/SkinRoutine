//
//  Routine.swift
//  SkinRoutine
//
//  Created by Canessane Ramya on 25/07/2026.
//

import Foundation

struct Routine: Identifiable {
    let id = UUID()
    let name: String
    let products: [Product]
}
