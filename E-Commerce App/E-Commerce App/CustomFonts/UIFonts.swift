//
//  UIFonts.swift
//  E-Commerce App
//
//  Created by Decagon on 08/07/2022.
//

import Foundation
import UIKit

enum FontFamily: String{
    case MontserratVariableFont_wght = "Montserrat-VariableFont_wght"
    case MontserratItalicVariableFont_wght = "Montserrat-Italic-VariableFont_wght"
    case MontserratLightItalic = "Montserrat-LightItalic"
    case MontserratMedium = "Montserrat-Medium"
    case MontserratBoldItalic = "Montserrat-BoldItalic"
    case MontserratLight = "Montserrat-Light"
    case MontserratThinItalic = "Montserrat-ThinItalic"
    case MontserratExtraLight = "Montserrat-ExtraLight"
    case MontserratThin = "Montserrat-Thin"
    case MontserratBold = "Montserrat-Bold"
    case MontserratMediumItalic = "Montserrat-MediumItalic"
    case MontserratBlackItalic = "Montserrat-BlackItalic"
    case MontserratSemiBold = "Montserrat-SemiBold"
    case MontserratBlack = "Montserrat-Black"
    case MontserratExtraLightItalic = "Montserrat-ExtraLightItalic"
    case MontserratExtraBold = "Montserrat-ExtraBold"
    case MontserratRegular = "Montserrat-Regular"
    case MontserratItalic = "Montserrat-Italic"
    case MontserratSemiBoldItalic = "Montserrat-SemiBoldItalic"
    case MontserratExtraBoldItalic = "Montserrat-ExtraBoldItalic"
}

func customFont(size: CGFloat, font: FontFamily) -> UIFont {
    guard let customFont = UIFont(name: font.rawValue, size: size) else {
        return UIFont.systemFont(ofSize: size)
    }
    return customFont
}

