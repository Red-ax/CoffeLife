//
//  PromotionsViewController.swift
//  CoffeLife
//
//  Created by mac on 24.05.2021.
//

import UIKit

class PromotionsViewController: UIViewController {
    
    @IBOutlet weak var promoTableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        promoTableView.dataSource = self
        promoTableView.delegate = self
    }

}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension PromotionsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        promotionsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "promoCell", for: indexPath) as? PromotionsTableViewCell {
            
            cell.promotions = promotionsData[indexPath.row]
            
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
