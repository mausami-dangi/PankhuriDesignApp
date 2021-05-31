//
//  CalenderBtnTVCell.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 31/05/21.
//

import UIKit

class CalenderBtnTVCell: UITableViewCell {

    //MARK:- IB_OUTLETS
    @IBOutlet weak var addCalenderBtn: UIButton!
    
    
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
        
        addCalenderBtn.setupButton(title: "Add to Calender", textColor: sColorWhite, borderColor: sColorClear, fontSize: AppFont.size14.bold, bgColor: sColorPurpleFont, cornerRadius: 22.0, borderWidth: 0.0)
    }
    
}
