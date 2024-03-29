//
//  UIFont+Extension.swift
//  SwiftUI-Triplr-App
//
//  Created by Le Hoang Anh on 18/03/2022.
//

import SwiftUI

extension Font {
    
    private static let _fontName = "Metropolis"
    
    enum `Type` : String {
        case regular
        case semiBold
        case medium
        case black
        case bold
        
        var fontName: String {
            return "\(_fontName)-\(self.rawValue.capitalized)"
        }
    }
    
    static func primary(_ type: `Type`, size: CGFloat = 15) -> Font {
        return .custom(type.fontName, size: size)
    }
    
}
