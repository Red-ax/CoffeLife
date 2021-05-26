//
//  PromotionsTableViewCell.swift
//  CoffeLife
//
//  Created by mac on 24.05.2021.
//

import UIKit

class PromotionsTableViewCell: UITableViewCell {

    @IBOutlet weak var promoImageView: UIImageView! {
        didSet {
            promoImageView.layer.cornerRadius = 24
            promoImageView.layer.masksToBounds = true
        }
    }
    @IBOutlet weak var promoNameLabel: UILabel!
    @IBOutlet weak var promoDescriptionLabel: UILabel!
    
    
    var promotions: Promotion? {
        didSet {
            if let image = promotions?.promoImage {
                promoImageView.image = UIImage(named: image)
            }
            promoNameLabel.text = promotions?.promoName
            promoDescriptionLabel.text = promotions?.promoDescription
        }
    }

}
