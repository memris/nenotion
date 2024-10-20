//
//  Colors.swift
//  nenotion
//
//  Created by USER on 10.10.2024.
//

import SwiftUI

extension UIColor {
   convenience init(red: Int, green: Int, blue: Int) {
       assert(red >= 0 && red <= 255, "Invalid red component")
       assert(green >= 0 && green <= 255, "Invalid green component")
       assert(blue >= 0 && blue <= 255, "Invalid blue component")

       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
   }

   convenience init(rgb: Int) {
       self.init(
           red: (rgb >> 16) & 0xFF,
           green: (rgb >> 8) & 0xFF,
           blue: rgb & 0xFF
       )
   }
}

struct AppColors {
    static let primary = Color(UIColor(rgb: 0x6D82D3))
    static let surface = Color(UIColor(rgb: 0xF3F4F9))
    static let onSurface = Color(UIColor(rgb: 0x636469))
    static let onSurfaceBlack = Color(UIColor(rgb: 0x404146))
    static let onSurfaceWhite = Color(UIColor(rgb: 0xFAFAFF))
}

