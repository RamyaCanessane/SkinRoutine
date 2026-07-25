//
//  ProductDTO.swift
//  SkinRoutine
//
//  Created by Canessane Ramya on 25/07/2026.
//

import Foundation

struct ProductDTO: Decodable {
    let name: String
    let image: String
    let type: ProductType
    let skin: SkinType
    let caption: String
    let description: String
    let usage: String
    
    init(name: String, image: String, type: ProductType, skin: SkinType, caption: String, description: String, usage: String, isDone: Bool) {
        self.name = name
        self.image = image
        self.type = type
        self.skin = skin
        self.caption = caption
        self.description = description
        self.usage = usage
    }
    
    enum CodingKeys: String, CodingKey {
        case name
        case image
        case type
        case skin
        case caption
        case description
        case usage
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.image = try container.decode(String.self, forKey: .image)
        self.type = try container.decode(ProductType.self, forKey: .type)
        self.skin = try container.decode(SkinType.self, forKey: .skin)
        self.caption = try container.decode(String.self, forKey: .caption)
        self.description = try container.decode(String.self, forKey: .description)
        self.usage = try container.decode(String.self, forKey: .usage)
    }
}
