//
//  Model.swift
//  E-Commerce App
//
//  Created by Decagon on 14/07/2022.
//

import Foundation
import UIKit


struct Products {
    let productImage: UIImage?
    let productName: String
    let productAmount: String
    let productFollowBtn: String
}


let newProducts = [
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "$25", productFollowBtn: ""),
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "$25", productFollowBtn: ""),
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "$25", productFollowBtn: ""),
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "$25", productFollowBtn: "")

]

let popularProducts = [
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "$25", productFollowBtn: ""),
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "$25", productFollowBtn: ""),
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "$25", productFollowBtn: ""),
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "$25", productFollowBtn: "")
]

let productsToFollow = [
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "", productFollowBtn: "Follow"),
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "", productFollowBtn: "Follow"),
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "", productFollowBtn: "Follow"),
    Products(productImage: UIImage(named: "veg"), productName: "Coca-cola", productAmount: "", productFollowBtn: "Follow")
]
 let products = [newProducts, popularProducts, productsToFollow]
