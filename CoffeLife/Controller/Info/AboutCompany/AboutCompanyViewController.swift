//
//  AboutCompanyViewController.swift
//  CoffeLife
//
//  Created by mac on 06.06.2021.
//

import UIKit

class AboutCompanyViewController: UIViewController {
    
    @IBOutlet weak var closeButton: UIButton! {
        didSet {
            closeButton.layer.cornerRadius = 14
        }
    }
    @IBOutlet weak var infoView: UIView! {
        didSet {
            infoView.layer.cornerRadius = 28
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
