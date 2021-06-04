//
//  ContantViewController.swift
//  CoffeLife
//
//  Created by mac on 02.06.2021.
//

import UIKit

class ContentViewController: UIViewController {
    
    @IBOutlet weak var paginationImage: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var closeButton: UIButton! {
        didSet {
            closeButton.layer.cornerRadius = 14
        }
    }
    @IBOutlet weak var goPromoButton: UIButton! {
        didSet {
            goPromoButton.layer.cornerRadius = 18
        }
    }
    
    var image = ""
    var currentPage = 0
    var numberOfPage = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        paginationImage.image = UIImage(named: image)
        pageControl.currentPage = currentPage
        pageControl.numberOfPages = numberOfPage
        
    }
    
    @IBAction func closeScreen(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
