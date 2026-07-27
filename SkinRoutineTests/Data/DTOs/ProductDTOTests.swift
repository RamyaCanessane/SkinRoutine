//
//  ProductDTOTests.swift
//  SkinRoutineTests
//
//  Created by Canessane Ramya on 25/07/2026.
//

import Testing
import Foundation
@testable import SkinRoutine

struct ProductDTOTests {

    @Test func initFromDecoder() {
        //GIVEN
        let json = """
            {
                "name": "CeraVe Crème Hydratante",
                "type": "Crème hydratante",
                "skin_type": "Sèche",
                "concern_type": "Peau atopique",
                "caption": "Hydratation intense pour peaux sèches à très sèches",
                "description": "Crème enrichie en trois céramides essentiels et acide hyaluronique. Elle aide à restaurer la barrière cutanée et à réduire les sensations de tiraillement.",
                "usage": "Appliquer matin et soir sur visage propre."
            }
            """
        
        //WHEN
        let data = Data(json.utf8)
        let decoder = JSONDecoder()
        let sut = try? decoder.decode(ProductDTO.self, from: data)
       
        //THEN
        #expect(sut?.name == "CeraVe Crème Hydratante")
        #expect(sut?.type.rawValue == "Crème hydratante")
        #expect(sut?.skinType.rawValue == "Sèche")
        #expect(sut?.concernType.rawValue == "Peau atopique")
        #expect(sut?.caption == "Hydratation intense pour peaux sèches à très sèches")
        #expect(sut?.description == "Crème enrichie en trois céramides essentiels et acide hyaluronique. Elle aide à restaurer la barrière cutanée et à réduire les sensations de tiraillement.")
        #expect(sut?.usage == "Appliquer matin et soir sur visage propre.")
        
    }
}
