//
//  ProductRepositoryProtocol.swift
//  SkinRoutine
//
//  Created by Canessane Ramya on 30/07/2026.
//

import Foundation

protocol ProductRepositoryProtocol {
    func fetch() async throws -> [Product]
}
