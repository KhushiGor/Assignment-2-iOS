//
//  ItemModel.swift
//  Assignment-2-iOS
//
//  Created by Khushi Mineshkumar Gor on 2024-10-10.
//

//import Foundation
class ItemModel{
    var name = ""
    var quantity = 0
    var price = 0.0
    
    init(name: String = "", quantity: Int = 0, price: Double = 0.0) {
        self.name = name
        self.quantity = quantity
        self.price = price
    }
    
}
