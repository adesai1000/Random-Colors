//
//  UIColor+Ext.swift
//  Random Colors
//
//  Created by Ayush Desai on 7/13/24.
//

import UIKit

extension UIColor{
    static func randomColorGenerator() -> UIColor {
        let randomColor = UIColor(red: CGFloat.random(in: 0...1),
                                  green: CGFloat.random(in: 0...1),
                                  blue: CGFloat.random(in: 0...1),
                                  alpha: 1)
        return randomColor
    }
}
