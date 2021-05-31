//
//  BannerTVCell.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 25/05/21.
//

import UIKit

class BannerTVCell: UITableViewCell {

    //MARK:- IB_OUTLETS
    @IBOutlet weak var mainView: UIView!
    
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var howToLearnLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var followTrainerBtn: UIButton!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var confirmedView: UIView!
    @IBOutlet weak var confirmedLbl: UILabel!
    @IBOutlet weak var registerView: UIView!
    @IBOutlet weak var registerNoLbl: UILabel!
    
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var profileNameLbl: UILabel!
    @IBOutlet weak var makeupLbl: UILabel!
    @IBOutlet weak var followBtn: UIButton!
    
    
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
        
        mainView.setupView(cornerRadius: 18.0, borderWidth: 0.0, borderColor: sColorClear)
        
        backgroundImageView.setupView(cornerRadius: 18.0, borderWidth: 0.0, borderColor: sColorClear, backgroundColor: sColorClear)
        
        howToLearnLbl.setupLabel(title: "How to learn the art of mahendi \nwith a few easy trics", fontSize: AppFont.size16.bold, textColor: sColorWhite)
        
        nameLbl.setupLabel(title: "By Vibhithi Singh", fontSize: AppFont.size14.regular, textColor: sColorWhite)
        
        followTrainerBtn.setupButton(title: "Follow Trainer", textColor: sColorWhite, borderColor: sColorWhite, fontSize: AppFont.size12.regular, bgColor: sColorClear, cornerRadius: 11.0, borderWidth: 1.0)
        
        dateLbl.setupLabel(title: "27-30 July", fontSize: AppFont.size22.bold, textColor: sColorWhite)
        
        timeLbl.setupLabel(title: "3.30-4.30 PM", fontSize: AppFont.size22.bold, textColor: sColorWhite)
        
        confirmedView.setupView(backgroundColor: sColorParrotGreen)
        
        confirmedLbl.setupLabel(title: "CONFIRMED", fontSize: AppFont.size14.bold, textColor: sColorWhite)
        
        registerView.setupView(backgroundColor: sColorBlack)
        registerNoLbl.setupLabel(title: "REG. NO.: 0098472838BNG   ", fontSize: AppFont.size14.bold, textColor: sColorWhite)
        
        profileImageView.setupImageView(borderWidth: 0.0, borderColor: sColorClear, cornerRadius: 0.0)
        
        profileNameLbl.setupLabel(title: "Vibhithi singh", fontSize: AppFont.size16.bold, textColor: sColorDarkPink)
        
        makeupLbl.setupLabel(title: "Makeup Specialist", fontSize: AppFont.size12.regular, textColor: sColorDarkGray)
        
        followBtn.setupButton(title: "Follow Trainer", textColor: sColorWhite, fontSize: AppFont.size12.bold, bgColor: sColorDarkPink, cornerRadius: 14.0)
    }
}
