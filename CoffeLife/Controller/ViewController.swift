//
//  ViewController.swift
//  CoffeLife
//
//  Created by mac on 19.05.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            
        }
    }
    
    var menuSection = [menuSpringSummer, menuClassicDrinks, menuCoffePositive, menuTea, menuCoffeeBeans]
    
//    var itemMenuArray: [Menu] = {
//        var itemMenu = Menu()
//        itemMenu.imageName = "Капучино"
//        itemMenu.name = "Капучино"
//        itemMenu.price = "130 ₽"
//        return [itemMenu]
//    }()
    
//    var menuClassicDrinks = [Menu(imageView: "ДвойнойЭспрессо", name: "Двойной Эспрессо", price: "130 ₽"),
//                         Menu(imageView: "Американо", name: "Американо", price: "130 ₽"),
//                         Menu(imageView: "Капучино", name: "Капучино", price: "130 ₽"),
//                         Menu(imageView: "Латте", name: "Латте", price: "130 ₽"),
//                         Menu(imageView: "РафКофе", name: "Раф Кофе", price: "130 ₽"),
//                         Menu(imageView: "ГорячийШоколад", name: "Горячий Шоколад", price: "130 ₽"),
//                         Menu(imageView: "Какао", name: "Какао", price: "130 ₽"),
//                         Menu(imageView: "ФлэтУайт", name: "Флэт Уайт", price: "130 ₽"),
//                         Menu(imageView: "ЛайфФраппе", name: "Лайф Фраппе", price: "130 ₽"),
//                         Menu(imageView: "Чай", name: "Чай", price: "130 ₽"),
//                         Menu(imageView: "МолочныйКоктейль", name: "Молочный Коктейль", price: "130 ₽")]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        menuSection.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menuSection[section].count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! MenuCollectionViewCell
        
        
//        cell.menu = menuClassicDrinks[indexPath.row]
        cell.menu = menuSection[indexPath.section][indexPath.row]
            
        return cell
        
    }
    
    
    //
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: 80)
    }

    
    
    
    
    //
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.size.width / 2
        let height = collectionView.frame.size.height / 2.5
        
        return CGSize(width: width, height: height)
    }
    
    
}

