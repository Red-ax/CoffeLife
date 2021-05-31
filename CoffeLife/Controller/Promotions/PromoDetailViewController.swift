//
//  PromoDetailViewController.swift
//  CoffeLife
//
//  Created by mac on 28.05.2021.
//

import UIKit

class PromoDetailViewController: UIViewController {
    
    @IBOutlet weak var promoDetailImageView: UIImageView! {
        didSet {
            promoDetailImageView.layer.cornerRadius = 18
            promoDetailImageView.layer.masksToBounds = true
            
            if let image = promotios?.promoImage {
                promoDetailImageView.image = UIImage(named: image)
            }
        }
    }
    @IBOutlet weak var promoDetailName: UILabel! {
        didSet {
            promoDetailName.text = promotios?.promoName
        }
    }
    @IBOutlet weak var promoDetailDescriptions: UILabel! {
        didSet {
            promoDetailDescriptions.text = promotios?.promoFullDescription
        }
    }
    @IBOutlet weak var backAllPromoButton: UIButton! {
        didSet {
            backAllPromoButton.layer.cornerRadius = 18
            backAllPromoButton.layer.borderWidth = 1
            backAllPromoButton.layer.borderColor = #colorLiteral(red: 0, green: 0.5058823529, blue: 0.06666666667, alpha: 1)
        }
    }
    
    

    
    
    
    var promotios: Promotion?

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.tintColor = .white
        
//        navigationController?.navigationBar.backIndicatorImage = UIImage(named: "arrowCustom")
//        navigationController?.navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "arrowCustom")
//        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    
    }
    
    @IBAction func allPromo(sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
