//
//  ManagerOptionsViewController.swift
//  Assignment-2-iOS
//
//  Created by Khushi Mineshkumar Gor on 2024-10-17.
//

import UIKit

class ManagerOptionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showHistory" {
                let historyVC = segue.destination as! HistoryItemsTableViewController
                let appDelegate = UIApplication.shared.delegate as! AppDelegate
                historyVC.purchaseHistory = appDelegate.purchaseHistory
            }
        }
   
    
//
//    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
