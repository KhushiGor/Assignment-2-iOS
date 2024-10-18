//
//  RestockViewController.swift
//  Assignment-2-iOS
//
//  Created by Khushi Mineshkumar Gor on 2024-10-17.
//

import UIKit

class RestockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        restockTable.delegate = self
//        restockTable.dataSource = self

        // Do any additional setup after loading the view.
    }
//    var didSelectProduct = false
//    var productIndex = -1;
//    
//    @IBOutlet weak var restockTextField: UITextField!
//    
//    
//    
//    func throwAlert(alertMessage: String){
//            
//            let alert = UIAlertController(title: "\(alertMessage)", message: "", preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "Ok", style: .cancel))
//            present(alert, animated: true)
//            
//        }
//    
//    
//    @IBAction func restockButton(_ sender: UIButton) {
//        if let restockQuantity = restockTextField? {
//                    if restockQuantity.isEmpty {
//                        throwAlert(alertMessage: "Empty Quantity")
//                    }
//                    
//                    else if !didSelectProduct{
//                        throwAlert(alertMessage: "Select product first")
//
//                    }
//                    else{
//                        if productIndex > -1{
//                            products[productIndex].quantity += Int(restockQuantity)!
//                            throwAlert(alertMessage: "Item restocked")
//                            restockTable.reloadData()
//                        }
//                        
//                    }
//                    
//                }
//    }
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//            didSelectProduct = true;
//            productIndex = indexPath.row;
//        }
//        
//        
//        var products: [ItemModel] {
//                let appDelegate = UIApplication.shared.delegate as! AppDelegate
//                return appDelegate.allItems
//            }
//        
//        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return products.count;
//        }
//        
//        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "restockCell") ??
//                       UITableViewCell(style: .subtitle, reuseIdentifier: "restockCell")
//            let productInCell = products[indexPath.row];
//            cell.textLabel?.text="\(productInCell.name)"
//            cell.detailTextLabel?.text = "\(productInCell.quantity)"
//            return cell
//        }
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
