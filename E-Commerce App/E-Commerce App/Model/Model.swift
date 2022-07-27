//
//  Model.swift
//  E-Commerce App
//
//  Created by Decagon on 14/07/2022.
//

import Foundation
import UIKit
// MARK: - //Model for the collectionview cells
struct MenuModel {
    var menuImage: UIImage?
    var firstMenuLabel: String
    var secondMenuLabel: String
}

struct GroceriesModel {
    var groceriesImage: UIImage?
    var groceriesLabel: String
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
    MenuModel(menuImage: UIImage(named: "groceries"), firstMenuLabel: "READY TO DELIVER \n TO YOUR HOME", secondMenuLabel: "START SHOPPING"),
    MenuModel(menuImage: UIImage(named: "groceries"), firstMenuLabel: "QUALITY SERVICE", secondMenuLabel: "START SHOPPING"),
    MenuModel(menuImage: UIImage(named: "groceries"), firstMenuLabel: "RELIABLE", secondMenuLabel: "START SHOPPING"),
    MenuModel(menuImage: UIImage(named: "groceries"), firstMenuLabel: "24HOURS AVAILABLE", secondMenuLabel: "START SHOPPING")
]

var groceriesArray = [
    GroceriesModel(groceriesImage: UIImage(named: "beverage"), groceriesLabel: "Beverages"),
    GroceriesModel(groceriesImage: UIImage(named: "bakery"), groceriesLabel: "Bread & Bakery"),
    GroceriesModel(groceriesImage: UIImage(named: "vegetable"), groceriesLabel: "Vegetables"),
    GroceriesModel(groceriesImage: UIImage(named: "fruits"), groceriesLabel: "Fruit"),
    GroceriesModel(groceriesImage: UIImage(named: "eggs"), groceriesLabel: "Egg"),
    GroceriesModel(groceriesImage: UIImage(named: "frozenveg"), groceriesLabel: "Frozen veg"),
    GroceriesModel(groceriesImage: UIImage(named: "homecare"), groceriesLabel: "Homecare"),
    GroceriesModel(groceriesImage: UIImage(named: "petcare"), groceriesLabel: "Pet Care"),
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
