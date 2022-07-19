//
//  Model.swift
//  E-Commerce App
//
//  Created by Decagon on 14/07/2022.
//

import Foundation
import UIKit

struct MenuModel {
    var menuImage: UIImage?
    var firstMenuLabel: String
    var secondMenuLabel: String
}

struct NewProductsModel {
    var productImage: UIImage?
    var productName: String
    var appName: String
    var productAmount: String
}

struct PopularProductsModel {
    var productImage: UIImage?
    var productName: String
    var appName: String
    var productAmount: String
}

struct StoresModel {
    var storeImage: UIImage?
    var storeName: String
    var followLabel: String
}

var menuArray = [
    MenuModel(menuImage: UIImage(named: "images4"), firstMenuLabel: "READY TO DELIVER \n TO YOUR HOME", secondMenuLabel: "START SHOPPING"),
    MenuModel(menuImage: UIImage(named: "images2"), firstMenuLabel: "QUALITY SERVICE", secondMenuLabel: "START SHOPPING"),
    MenuModel(menuImage: UIImage(named: "images3"), firstMenuLabel: "RELIABLE", secondMenuLabel: "START SHOPPING"),
    MenuModel(menuImage: UIImage(named: "images1"), firstMenuLabel: "24HOURS AVAILABLE", secondMenuLabel: "START SHOPPING")
]

var newProductsArray = [
    NewProductsModel(productImage: UIImage(named: "cola"), productName: "Coca-cola", appName: "Tradly", productAmount: "$15"),
    NewProductsModel(productImage: UIImage(named: "veg"), productName: "Vegetables", appName: "Tradly", productAmount: "$10"),
    NewProductsModel(productImage: UIImage(named: "cola"), productName: "Coca-cola", appName: "Tradly", productAmount: "$15"),
    NewProductsModel(productImage: UIImage(named: "veg"), productName: "Vegetables", appName: "Tradly", productAmount: "$10")
]

var popularProductsArray = [
    PopularProductsModel(productImage: UIImage(named: "fish"), productName: "Fish", appName: "Tradly", productAmount: "$15"),
    PopularProductsModel(productImage: UIImage(named: "shampoo"), productName: "Shampoo", appName: "Tradly", productAmount: "$25"),
    PopularProductsModel(productImage: UIImage(named: "drink"), productName: "Juice", appName: "Tradly", productAmount: "$10"),
    PopularProductsModel(productImage: UIImage(named: "shampoo"), productName: "Shampoo", appName: "Tradly", productAmount: "$25")

]

var storeArray = [
    StoresModel(storeImage: UIImage(named: "seafood"), storeName: "Tradly Store", followLabel: "Follow"),
    StoresModel(storeImage: UIImage(named: "berry"), storeName: "Groceries Store", followLabel: "Follow"),
    StoresModel(storeImage: UIImage(named: "images5"), storeName: "Tradly Store", followLabel: "Follow"),
    StoresModel(storeImage: UIImage(named: "images2"), storeName: "Groceries Store", followLabel: "Follow")
]
