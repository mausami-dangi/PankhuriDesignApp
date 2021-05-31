//
//  ClassesItemsCVCell.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 31/05/21.
//

import UIKit

class ClassesItemsCVCell: UICollectionViewCell {
    
    //MARK:- IB_OUTLETS
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var classesImageView: UIImageView!
    @IBOutlet weak var classesDetailLbl: UILabel!
    @IBOutlet weak var calenderImageView: UIImageView!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var clockImageView: UIImageView!
    @IBOutlet weak var timeLbl: UILabel!
    
    
    //MARK:- CELL_METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }
    
    
    //MARK:- OTHER_METHODS
    func setupView() {
        
        mainView.setupView(cornerRadius: 18.0, borderWidth: 1.0, borderColor: sColorLightGray, backgroundColor: sColorWhite)
        
        classesDetailLbl.setupLabel(title: "Live course - How to learn the art of mahendi with a", fontSize: AppFont.size14.semibold, textColor: sColorFontGray)
        
        dateLbl.setupLabel(title: "27th - 30th July", fontSize: AppFont.size12.regular, textColor: sColorDarkPink)
        
        timeLbl.setupLabel(title: "14.30 - 15.30", fontSize: AppFont.size12.regular, textColor: sColorDarkPink)
    }
}
