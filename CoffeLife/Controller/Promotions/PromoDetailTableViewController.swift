//
//  PromoDetailTableViewController.swift
//  CoffeLife
//
//  Created by mac on 26.05.2021.
//

import UIKit

class PromoDetailTableViewController: UITableViewController {
    
//    @IBOutlet weak var promoImageView: UIImageView! {
//        didSet {
//            promoImageView.layer.cornerRadius = 18
//            promoImageView.layer.masksToBounds = true
//        }
//    }
//    @IBOutlet weak var promoNameLabel: UILabel!
//    @IBOutlet weak var promoDescriptionsLabel: UILabel!
    
    
//    var promotions: Promotion? {
//        didSet {
//            if let image = promotions?.promoImage {
//                promoImageView.image = UIImage(named: image)
//            }
//            promoNameLabel.text = promotions?.promoName
//            promoDescriptionsLabel.text = promotions?.promoFullDescription
//        }
//    }
    
    var promotions: Promotion?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()

        navigationController?.navigationBar.prefersLargeTitles = false
        
        print(promotions?.promoName ?? "ошибка")
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }


//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//
//         Configure the cell...
//        switch indexPath.row {
//        case 0:
//            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PromoDetailImageCell.self), for: indexPath) as! PromoDetailImageCell
//            if let image = promotions?.promoImage {
//                cell.promoImageView.image = UIImage(named: image)
//            }
//            return cell
//        case 1:
//            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PromoDetailNameCell.self), for: indexPath) as! PromoDetailNameCell
//            cell.promoNameLabel.text = promotions?.promoName
//            return cell
//        case 2:
//            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: PromoDetailDescriptionsCell.self), for: indexPath) as! PromoDetailDescriptionsCell
//            cell.promoDescrioptionsLabel.text = promotions?.promoFullDescription
//            return cell
//        default:
//            fatalError("Failed to instantiate the table view cell for detail view controller")
//        }
//
//
//    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
