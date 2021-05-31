//
//  UIImageViewExtension.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 26/05/21.
//

import Foundation
import UIKit

extension UIImageView {

    func setupImageView(borderWidth:CGFloat = 0, borderColor: UIColor = .clear, cornerRadius: CGFloat = 0) {
        self.layer.borderWidth = borderWidth
        self.layer.masksToBounds = false
        self.layer.borderColor = borderColor.cgColor
        self.layer.cornerRadius = self.frame.height/2
        self.clipsToBounds = true
    }
}

