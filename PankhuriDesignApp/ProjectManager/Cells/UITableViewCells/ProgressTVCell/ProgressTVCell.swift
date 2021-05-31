//
//  ProgressTVCell.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 25/05/21.
//

import UIKit

class ProgressTVCell: UITableViewCell {

    //MARK:- IB_OUTLETS
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var uploadBtn: ButtonWithImage!
    
    
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
        
        mainView.setupView(cornerRadius: 18.0, borderWidth: 0.0, borderColor: sColorClear, backgroundColor: sColorLightParrotGreen)
        
        dateLbl.setupLabel(title: "Next Class: 28 July, 4.30 PM", fontSize: AppFont.size16.bold, textColor: sColorDarkGray)
        
        uploadBtn.setupButton(title: "Upload todays look", textColor: sColorWhite, borderColor: sColorClear, fontSize: AppFont.size16.bold, bgColor: sColorParrotGreen, cornerRadius: 22.0, borderWidth: 0.0)
    }
}


