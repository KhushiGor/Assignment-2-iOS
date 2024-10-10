//
//  ViewController.swift
//  Assignment-2-iOS
//
//  Created by Khushi Mineshkumar Gor on 2024-10-10.
//

import UIKit

class ViewController: UIViewController {
    var quantity = 0
    var  counter = 0
    let itemName = ["Hats" : 10, "Tshirt" : 10, "Dress" : 10]
    @IBOutlet weak var itemType: UILabel!
    
    @IBOutlet weak var total: UILabel!
 
    @IBOutlet weak var Quantity: UILabel!
    
    @IBAction func oneButton(_ sender: UIButton) {
        counter += 1
        quantity = quantity * 10 + quantity
        Quantity.text = "/(quantity)"
    }
    
    @IBAction func twoButton(_ sender: UIButton) {
        counter += 1
        quantity = quantity * 10 + quantity
        Quantity.text = "/(quantity)"
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

}

