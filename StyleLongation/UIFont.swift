//
//  UIFont.swift
//  StyleLongation
//
//  Created by Altiarika on 6/13/17.
//  Copyright © 2017 Altiarika. All rights reserved.
//

import UIKit


extension UIFont {
    
    enum FontWeight: String {
        case regular, medium, bold
    }
    
    static func robotoFont(ofSize: CGFloat, weight: FontWeight = .regular) -> UIFont {
        return UIFont(name: "Roboto-\(weight.rawValue.capitalized)", size: ofSize) ?? UIFont.systemFont(ofSize: ofSize)
    }
    
}
