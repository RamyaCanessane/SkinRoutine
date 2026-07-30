//
//  GetProductsUseCase.swift
//  SkinRoutine
//
//  Created by Canessane Ramya on 30/07/2026.
//

import Foundation

protocol GetProductsUseCaseProtocol {
    func execute() async throws -> [Product]
}

final class GetProductsUseCase: GetProductsUseCaseProtocol {
    private let repo: ProductRepositoryProtocol
    
    init(repo: ProductRepositoryProtocol) {
        self.repo = repo
    }
    
    func execute() async throws -> [Product] {
        try await repo.fetch()
    }
}
