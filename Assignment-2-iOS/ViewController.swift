//
//  ViewController.swift
//  Assignment-2-iOS
//
//  Created by Khushi Mineshkumar Gor on 2024-10-10.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var quantity = 0
    var price : Double = 0.0
    var allItems: [ItemModel] = [
        ItemModel(name: "Pants", quantity: 20, price: 40.80),
        ItemModel(name: "Shoes", quantity: 50, price: 70.90),
        ItemModel(name: "Hats", quantity: 10, price: 10.56),
        ItemModel(name: "T-shirts", quantity: 10, price: 30.78),
        ItemModel(name: "Dresses", quantity: 24, price: 60.00)
        ]
    var items: [ItemModel] {
              let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return allItems
          }
    

    var selectedItemIndex = 0
   
    @IBOutlet weak var itemType: UILabel!
    
    @IBOutlet weak var total: UILabel!
 
    @IBOutlet weak var Quantity: UILabel!
    
    @IBOutlet weak var itemTable: UITableView!
    
    @IBAction func digitButtons(_ sender: UIButton) {
        
            if let digitText = sender.titleLabel?.text, let digit = Int(digitText) {
                
                if quantity == 0 {
                    quantity = digit
                } else {
                    // Append new digit
                    quantity = quantity * 10 + digit
                }
                
                // Update the Quantity Label with the new quantity
                Quantity.text = "\(quantity)"
            }
        }
    
    func alert(alertMessage: String){
        let alert = UIAlertController(title: "\(alertMessage)", message: "", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .cancel))
        present(alert, animated: true)
    }
    @IBAction func buyButton(_ sender: UIButton) {
        if itemType.text == "Type"{alert(alertMessage: "Please Select Product")}
        else{
            let quantityToBuy = Int (Quantity.text!)
            if quantityToBuy! > quantity{
                alert(alertMessage: "Invalid Quantity")
            
            }
            else{
//                let quantityToSubtract = Int(Quantity.text!)
                items[selectedItemIndex].quantity -= quantityToBuy!
                itemTable.reloadData()
                let totalPrice : Double = Double(quantityToBuy!) * price
                Quantity.text = ""
                total.text = "\(totalPrice)"
                itemType.text = ""
            }
        }
    }
    
    func numberOfSections(in tableView : UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count;
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ??
                       UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
            let productInCell = items[indexPath.row];
            cell.textLabel?.text="\(productInCell.name)"
            cell.detailTextLabel?.text = "\(productInCell.quantity)"
            return cell
    }
    
    func itemTable(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           
           let product = items[indexPath.row]
           quantity = product.quantity;
           price = product.price;
           selectedItemIndex = indexPath.row
           itemType.text = "\(product.name)";
           Quantity.text = "";
           total.text = "";
           
           }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        itemTable.dataSource = self
        itemTable.delegate = self
        
    }
    

}

