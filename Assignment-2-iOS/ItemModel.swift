//
//  ItemModel.swift
//  Assignment-2-iOS
//
//  Created by Khushi Mineshkumar Gor on 2024-10-10.
//

import Foundation
class Item{
    var name = ""
    var quantity = 0
    var price = 0.0
    var total = 0.0
    init(name: String = "", quantity: Int = 0, price: Double = 0.0, total: Double = 0.0) {
        self.name = name
        self.quantity = quantity
        self.price = price
        self.total = total
    }
}
class PurchaseManager {
    public static var shared = PurchaseManager()
    var PurchaseHistory = [Item]()
    func addPurchase(c: Item){
        PurchaseHistory.append(c)
    }
}
