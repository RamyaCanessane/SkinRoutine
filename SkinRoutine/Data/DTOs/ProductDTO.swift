//
//  ProductDTO.swift
//  SkinRoutine
//
//  Created by Canessane Ramya on 25/07/2026.
//

import Foundation

struct ProductDTO: Decodable {
    let name: String
    let type: ProductType
    let skinType: SkinType
    let concernType: ConcernType
    let caption: String
    let description: String
    let usage: String
    
    init(
        name: String,
        type: ProductType,
        skinType: SkinType,
        concernType: ConcernType,
        caption: String,
        description: String,
        usage: String,
    ) {
        self.name = name
        self.type = type
        self.skinType = skinType
        self.concernType = concernType
        self.caption = caption
        self.description = description
        self.usage = usage
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case type
        case skinType = "skin_type"
        case concernType = "concern_type"
        case caption
        case description
        case usage
    }
    
    nonisolated init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.type = try container.decode(ProductType.self, forKey: .type)
        self.skinType = try container.decode(SkinType.self, forKey: .skinType)
        self.concernType = try container.decode(ConcernType.self, forKey: .concernType)
        self.caption = try container.decode(String.self, forKey: .caption)
        self.description = try container.decode(String.self, forKey: .description)
        self.usage = try container.decode(String.self, forKey: .usage)
    }
}

extension ProductDTO {
    func toDomain() -> Product {
        return Product(
            name: name,
            image: "",
            type: type,
            skinType: skinType,
            caption: caption,
            description: description,
            usage: usage,
            isDone: false
        )
    }
}
