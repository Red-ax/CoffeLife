//
//  DetailViewController.swift
//  CoffeLife
//
//  Created by mac on 22.05.2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var menuImageView: UIImageView! {
        didSet {
            menuImageView.layer.cornerRadius = 10
            menuImageView.layer.masksToBounds = true
            
            guard let image = menu?.imageName else { return }
            menuImageView.image = UIImage(named: image)
        }
    }
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.text = menu?.name
        }
    }
    @IBOutlet weak var priceLabel: UILabel! {
        didSet {
            priceLabel.text = "Цена - \(menu?.price ?? "ошибка")"
        }
    }
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var volumeSegmentedControl: UISegmentedControl! {
        didSet {
            volumeSegmentedControl.frame.size.height = 80
            volumeSegmentedControl.backgroundColor = #colorLiteral(red: 0.9373811104, green: 0.9789045277, blue: 0.9555890821, alpha: 1)

            let normalTextAttributes: [NSAttributedString.Key : AnyObject] = [
                NSAttributedString.Key.foregroundColor : UIColor.black,
                NSAttributedString.Key.font : UIFont.systemFont(ofSize: 18),
            ]
            volumeSegmentedControl.setTitleTextAttributes(normalTextAttributes, for: .normal)
        }
    }
    
    var menu: Menu?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

    }
    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(true)
//        
//        print("you kill me")
//    }

}
