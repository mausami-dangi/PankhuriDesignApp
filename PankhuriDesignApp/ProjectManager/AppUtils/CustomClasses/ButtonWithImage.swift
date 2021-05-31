//
//  ButtonWithImage.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 30/05/21.
//

import Foundation
import UIKit

class ButtonWithImage: UIButton {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if imageView != nil {
            imageEdgeInsets = UIEdgeInsets(top: 8, left: (bounds.width - 40), bottom: 8, right: 16)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: (imageView?.frame.width)!)
        }
    }
}
