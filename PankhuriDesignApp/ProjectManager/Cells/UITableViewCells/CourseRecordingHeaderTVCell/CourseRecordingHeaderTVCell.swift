//
//  CourseRecordingHeaderTVCell.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 30/05/21.
//

import UIKit

class CourseRecordingHeaderTVCell: UITableViewCell {

    //MARK:- IB_OUTLETS
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var calenderView: UIView!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var monthLbl: UILabel!
    @IBOutlet weak var timeDurationLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var arrowImageView: UIImageView!
    var isOpen = false
    
    
    //MARK:- CELL_METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.setupView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    //MARK:- OTHER_METHODS
    func setupView() {
        mainView.setupView(cornerRadius: 18.0, borderWidth: 0.0, borderColor: sColorClear, backgroundColor: sColorDarkPurple)
        
        calenderView.setupView(cornerRadius: 13.0, borderWidth: 0.0, borderColor: sColorClear, backgroundColor: sColorWhite)
        
        dateLbl.setupLabel(title: "27", fontSize: AppFont.size26.bold, textColor: sColorPurpleFont)
        
        monthLbl.setupLabel(title: "JULY", fontSize: AppFont.size14.bold, textColor: sColorPurpleFont)
        
        timeDurationLbl.setupLabel(title: "5.00AM - 6.00AM", fontSize: AppFont.size14.semibold, textColor: sColorPurpleFont)
        
        descriptionLbl.setupLabel(title: "Learn How To Create A Flawless \nMakeup Base.", fontSize: AppFont.size12.regular, textColor: sColorPurpleFont)
    }
}
