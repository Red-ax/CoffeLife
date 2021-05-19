//
//  ViewController.swift
//  CoffeLife
//
//  Created by mac on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var itemMenuArray: [Menu] = {
        var itemMenu = Menu()
        itemMenu.imageName = "Капучино"
        itemMenu.name = "Капучино"
        itemMenu.price = "130 ₽"
        return [itemMenu]
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! MenuCollectionViewCell
        
//        cell.menu = itemMenuArray[indexPath.row]
            
        return cell
        
        
    }
    
    
}

