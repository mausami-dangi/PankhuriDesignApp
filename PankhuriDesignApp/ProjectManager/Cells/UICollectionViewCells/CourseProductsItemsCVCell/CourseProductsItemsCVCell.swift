//
//  CourseProductsItemsCVCell.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 31/05/21.
//

import UIKit

class CourseProductsItemsCVCell: UICollectionViewCell {
    
    //MARK:- IB_OUTLETS
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productDetailLbl: UILabel!
    @IBOutlet weak var productPriceLbl: UILabel!
    @IBOutlet weak var buyNowBtn: UIButton!
    
    
    //MARK:- CELL_METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupView()
    }
    
    
    //MARK:- OTHER_METHODS
    func setupView() {
        
        mainView.setupView(cornerRadius: 18.0, borderWidth: 1.0, borderColor: sColorLightGray, backgroundColor: sColorWhite)
        
        productDetailLbl.setupLabel(title: "Ace of Face \n Foundation Stick", fontSize: AppFont.size14.semibold, textColor: sColorFontGray)
        
        productPriceLbl.setupLabel(title: "Rs.650 Rs.499 ", fontSize: AppFont.size14.semibold, textColor: sColorPink)
        
        productPriceLbl.attributedText = NSMutableAttributedString()
            .strikeThrough("Rs.650")
            .bold(" Rs.499/-")
        
        buyNowBtn.setupButton(title: "Buy Now", textColor: sColorWhite, borderColor: sColorClear, fontSize: AppFont.size16.bold, bgColor: sColorDarkPink, cornerRadius: 17.0, borderWidth: 0.0)
    }
}
