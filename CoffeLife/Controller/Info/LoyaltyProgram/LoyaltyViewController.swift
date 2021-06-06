//
//  LoyaltyViewController.swift
//  CoffeLife
//
//  Created by mac on 04.06.2021.
//

import UIKit

class LoyaltyViewController: UIViewController {
    
    @IBOutlet weak var loyatyScroll: UIScrollView!
    @IBOutlet weak var closeButton: UIButton! {
        didSet {
            closeButton.layer.cornerRadius = 14
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

//        loyatyScroll.contentSize = CGSize(width: loyatyScroll.frame.size.width, height: loyatyScroll.contentSize.height)
//        loyatyScroll.contentOffset = CGPoint(x: 0, y: loyatyScroll.contentSize.height)
        
    }
    
    @IBAction func closeScreen(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
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
