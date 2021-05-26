//
//  Promotion.swift
//  CoffeLife
//
//  Created by mac on 24.05.2021.
//

import Foundation

struct Promotion {
    var promoImage: String?
    var promoName: String?
    var promoDescription: String?
    var promoFullDescription: String?
    
    init(promoImage: String, promoName: String, promoDescription: String, promoFullDescription: String) {
        self.promoImage = promoImage
        self.promoName = promoName
        self.promoDescription = promoDescription
        self.promoFullDescription = promoFullDescription
    }
}
