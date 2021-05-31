//
//  NSAttributedStringExtension.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 01/06/21.
//

import Foundation
import UIKit

extension NSMutableAttributedString {
    
    func bold(_ value:String) -> NSMutableAttributedString {
        
        let attributes:[NSAttributedString.Key : Any] = [
            .font : AppFont.size14.bold,
            .foregroundColor : sColorDarkPink,
        ]
        
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
    
    
    func strikeThrough(_ value:String) -> NSMutableAttributedString {
        let attributes:[NSAttributedString.Key : Any] = [
            .font :  AppFont.size14.bold,
            .foregroundColor : sColorDarkGray,
            .strikethroughStyle : NSUnderlineStyle.single.rawValue
            
        ]
        
        self.append(NSAttributedString(string: value, attributes:attributes))
        return self
    }
}
