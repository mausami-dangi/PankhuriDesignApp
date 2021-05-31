//
//  UIButtonExtension.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 26/05/21.
//

import Foundation
import UIKit

extension UIButton {
        
    func setupButton(title : String, textColor : UIColor,borderColor:UIColor = UIColor.clear, fontSize : UIFont, bgColor : UIColor = .clear, cornerRadius : CGFloat = 0 ,borderWidth:CGFloat = 0 ) {
        self.setTitle(title, for: .normal)
        self.backgroundColor = bgColor
        self.setTitleColor(textColor, for: .normal)
        self.titleLabel?.font = fontSize
        self.layer.cornerRadius = cornerRadius
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = borderWidth
        self.clipsToBounds = true
    }
}

