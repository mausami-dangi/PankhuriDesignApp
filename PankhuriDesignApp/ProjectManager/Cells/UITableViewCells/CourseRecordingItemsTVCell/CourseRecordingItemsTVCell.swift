//
//  CourseRecordingItemsTVCell.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 25/05/21.
//

import UIKit

class CourseRecordingItemsTVCell: UITableViewCell {

    //MARK:- IB_OUTLETS
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var gameLbl: UILabel!
    @IBOutlet weak var skinLbl: UILabel!
    @IBOutlet weak var primeLbl: UILabel!
    @IBOutlet weak var aceLbl: UILabel!
    @IBOutlet weak var tipsLbl: UILabel!
    @IBOutlet weak var downloadBtn: ButtonWithImage!
    
    
    //MARK:- CELL_METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
    
        self.setupView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    
    //MARK:- OTHER_METHODS
    func setupView() {
        
        mainView.setupView(cornerRadius: 18.0, borderWidth: 0.0, borderColor: sColorClear, backgroundColor: sColorLightPurple)
        
        gameLbl.setupLabel(title: "Get your Base game strong!", fontSize: AppFont.size12.semibold, textColor: sColorPurpleFont)
        
        skinLbl.setupLabel(title: "Understanding Skin types", fontSize: AppFont.size12.semibold, textColor: sColorPurpleFont)
        
        primeLbl.setupLabel(title: "Prep and Prime", fontSize: AppFont.size12.semibold, textColor: sColorPurpleFont)
        
        aceLbl.setupLabel(title: "Ace your Base", fontSize: AppFont.size12.semibold, textColor: sColorPurpleFont)
        
        tipsLbl.setupLabel(title: "Skincare tips and hacks", fontSize: AppFont.size12.semibold, textColor: sColorPurpleFont)
        
        downloadBtn.setupButton(title: "Download Recording", textColor: sColorPurpleFont, borderColor: sColorClear, fontSize: AppFont.size14.bold, bgColor: sColorWhite, cornerRadius: 22.0, borderWidth: 0.0)
    }
}
