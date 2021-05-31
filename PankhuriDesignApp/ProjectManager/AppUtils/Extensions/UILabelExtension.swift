//
//  UILabelExtension.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 26/05/21.
//

import Foundation
import UIKit

extension UILabel {
    
    func setupLabel(title: String, fontSize: UIFont, textColor: UIColor = .clear) {
        if title != "" {
            self.text = title
        }
        self.font = fontSize
        self.textColor = textColor
    }
}
