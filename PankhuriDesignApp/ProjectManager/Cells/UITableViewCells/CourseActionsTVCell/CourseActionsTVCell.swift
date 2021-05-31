//
//  CourseActionsTVCell.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 25/05/21.
//

import UIKit

class CourseActionsTVCell: UITableViewCell {

    //MARK:- IB_OUTLETS
    @IBOutlet weak var classroomView: UIView!
    @IBOutlet weak var viewCallOuterView: UIView!
    @IBOutlet weak var videoCallImageView: UIImageView!
    @IBOutlet weak var classroomLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var passwordLbl: UILabel!
    
    @IBOutlet weak var joinGroupView: UIView!
    @IBOutlet weak var groupOuterView: UIView!
    @IBOutlet weak var groupImageView: UIImageView!
    @IBOutlet weak var groupLbl: UILabel!
    @IBOutlet weak var questionsLbl: UILabel!
    
    
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
        
        classroomView.setupView(cornerRadius: 18.0, borderWidth: 0.0, borderColor: sColorClear, backgroundColor: sColorBlue)
        
        viewCallOuterView.setupView(cornerRadius: 25.0, borderWidth: 3.0, borderColor: sColorWhite, backgroundColor: sColorBlue)
        
        classroomLbl.setupLabel(title: "Enter \nClassroom", fontSize: AppFont.size18.bold, textColor: sColorWhite)
        
        timeLbl.setupLabel(title: "Join the course in \n74:23:30", fontSize: AppFont.size12.regular, textColor: sColorWhite)
        
        passwordLbl.setupLabel(title: "Password: Ad934gb", fontSize: AppFont.size12.regular, textColor: sColorWhite)
        
        joinGroupView.setupView(cornerRadius: 18.0, borderWidth: 0.0, borderColor: sColorClear, backgroundColor: sColorPink)
        
        groupOuterView.setupView(cornerRadius: 25.0, borderWidth: 3.0, borderColor: sColorWhite, backgroundColor: sColorPink)
        
        groupLbl.setupLabel(title: "Join Course \nGroup", fontSize: AppFont.size18.bold, textColor: sColorWhite)
        
        questionsLbl.setupLabel(title: "Have questions about the course? get immidiate answers.", fontSize: AppFont.size12.regular, textColor: sColorWhite)
    }
}
