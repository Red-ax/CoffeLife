//
//  Menu.swift
//  CoffeLife
//
//  Created by mac on 19.05.2021.
//

import Foundation

struct Menu {
    var imageName: String?
    var name: String?
    var price: String?
    
    init(imageView: String, name: String, price: String) {
        self.imageName = imageView
        self.name = name
        self.price = price
    }
}



