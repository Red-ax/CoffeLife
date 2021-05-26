 //
//  MenuCollectionViewCell.swift
//  CoffeLife
//
//  Created by mac on 19.05.2021.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var menuImageView: UIImageView! {
        didSet {
            menuImageView.layer.cornerRadius = 24
            menuImageView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel! {
        didSet {
            priceLabel.layer.cornerRadius = 12
            priceLabel.layer.masksToBounds = true
        }
    }
    
    
    var menu: Menu? {
        didSet {
            if let image = menu?.imageName{
                menuImageView.image = UIImage(named: image)
            }
            nameLabel.text = menu?.name
            priceLabel.text = "\(menu?.price ?? "ошибка") ₽"
        }
    }
    
}
