//
//  UIViewExtension.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 26/05/21.
//

import Foundation
import UIKit

extension UIView {
    
    func setupView(cornerRadius: CGFloat = 0.0 , borderWidth:  CGFloat = 0.0 , borderColor: UIColor = UIColor.clear, backgroundColor: UIColor = UIColor.clear) {
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor.cgColor
        self.backgroundColor = backgroundColor
        self.clipsToBounds = true
    }
    
    func customRoundCorners(_ corners: CACornerMask, radius: CGFloat) {
        self.layer.maskedCorners = corners
        self.layer.cornerRadius = radius
    }
    
    public func addShadowToView(shadow_color: UIColor,offset: CGSize,shadow_radius: CGFloat,shadow_opacity: Float,corner_radius: CGFloat) {
        self.layer.shadowColor = shadow_color.cgColor
        self.layer.shadowOpacity = shadow_opacity
        self.layer.shadowOffset = offset
        self.layer.shadowRadius = shadow_radius
        self.layer.cornerRadius = corner_radius
        self.layer.masksToBounds = false
    }
}
