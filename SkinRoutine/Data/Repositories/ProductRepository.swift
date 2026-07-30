//
//  ProductRepository.swift
//  SkinRoutine
//
//  Created by Canessane Ramya on 27/07/2026.
//

import Foundation

enum ProductError: Error {
    case decodingFailed
    case missingData
}

final class ProductRepository: ProductRepositoryProtocol {
    let jsonDecoder = JSONDecoder()
    
    func fetch() async throws -> [Product] {
        guard let jsonData = try? loadDataFromJson(),
              let dtoList = try? jsonDecoder.decode([ProductDTO].self, from: jsonData)
        else {
            throw ProductError.missingData
        }
        return dtoList.map { $0.toDomain() }
    }
}

extension ProductRepository {
    private func loadDataFromJson() throws -> Data {
        guard let url = Bundle.main.url(forResource: "ProductsData.json", withExtension: "json"),
              let jsonString = try? String(contentsOf: url, encoding: .utf8)
        else {
            throw ProductError.decodingFailed
        }
        
        let jsonData = Data(jsonString.utf8)
        
        return jsonData
    }
}
