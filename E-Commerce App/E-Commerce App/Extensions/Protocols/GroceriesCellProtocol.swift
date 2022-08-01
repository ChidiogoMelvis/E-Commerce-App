//
//  GroceriesCellProtocol.swift
//  E-Commerce App
//
//  Created by Decagon on 27/07/2022.
//

import Foundation
import UIKit

// MARK: - This Protocol will be implemented in the Homeviewcontroller and the Collectionview to push the indexpath item to their different view controllers 
protocol CellSelectedDelegate {
    func cellSelected(_ vc: UIViewController)
}

