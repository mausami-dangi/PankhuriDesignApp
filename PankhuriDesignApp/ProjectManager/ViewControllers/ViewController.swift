//
//  ViewController.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 30/05/21.
//

import UIKit
import ExpandableCell

class ViewController: UIViewController {
    
    //MARK:- IB_OUTLETS
    @IBOutlet weak var mainTableView: ExpandableTableView!
    
    //MARK:- DECLARATION
    
    
    //MARK:- VIEW_METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpTableViewData()
    }
    
    //MARK:- API_CALL
    
    
    //MARK:- IB_ACTION
    
    
    //MARK:- OTHER_METHODS
    func setUpTableViewData() {
        
        mainTableView.expandableDelegate = self
        
        mainTableView.register(UINib(nibName: "BannerTVCell", bundle: nil), forCellReuseIdentifier: "BannerTVCell")
        mainTableView.register(UINib(nibName: "ProgressTVCell", bundle: nil), forCellReuseIdentifier: "ProgressTVCell")
        mainTableView.register(UINib(nibName: "CourseActionsTVCell", bundle: nil), forCellReuseIdentifier: "CourseActionsTVCell")
        mainTableView.register(UINib(nibName: "CourseRecordingHeaderTVCell", bundle: nil), forCellReuseIdentifier: "CourseRecordingHeaderTVCell")
        mainTableView.register(UINib(nibName: "CourseRecordingItemsTVCell", bundle: nil), forCellReuseIdentifier: "CourseRecordingItemsTVCell")
        mainTableView.register(UINib(nibName: "CalenderBtnTVCell", bundle: nil), forCellReuseIdentifier: "CalenderBtnTVCell")
        mainTableView.register(UINib(nibName: "CourseProductsTVCell", bundle: nil), forCellReuseIdentifier: "CourseProductsTVCell")
        mainTableView.register(UINib(nibName: "ClassesTVCell", bundle: nil), forCellReuseIdentifier: "ClassesTVCell")
    }
    
    
    //MARK:- SEGUE_METHODS
    
}

//MARK:- EXTENSION : UITableView Delegate Methods
extension ViewController: ExpandableDelegate {
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: "BannerTVCell") else { return BannerTVCell() }
            return cell
            
        case 1:
            guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: "ProgressTVCell") else { return ProgressTVCell() }
            return cell
            
        case 2:
            guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: "CourseActionsTVCell") else { return CourseActionsTVCell() }
            return cell
            
        case 3,4,5:
            guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: "CourseRecordingHeaderTVCell") else { return CourseRecordingHeaderTVCell() }
            return cell
            
        case 6:
            guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: "CalenderBtnTVCell") else { return CalenderBtnTVCell() }
            return cell
            
        case 7:
            guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: "CourseProductsTVCell") else { return CourseProductsTVCell() }
            return cell
            
        case 8:
            guard let cell = expandableTableView.dequeueReusableCell(withIdentifier: "ClassesTVCell") else { return ClassesTVCell() }
            return cell
            
        default:
            return UITableViewCell()
        }
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return 290
            
        case 1:
            return 150
            
        case 2:
            return 222
            
        case 3,4,5:
            return 90
            
        case 6:
            return 44
            
        case 7:
            return 350
            
        case 8:
            return 350
            
        default:
            return 0
        }
    }
    
    // SubHeader
    func expandableTableView(_ expandableTableView: ExpandableTableView, expandedCellsForRowAt indexPath: IndexPath) -> [UITableViewCell]? {
        
        switch indexPath.row {
        case 3,4,5:
            let cell1 = mainTableView.dequeueReusableCell(withIdentifier: "CourseRecordingItemsTVCell") as! CourseRecordingItemsTVCell
            return [cell1]
            
        default:
            break
            
        }
        return nil
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, heightsForExpandedRowAt indexPath: IndexPath) -> [CGFloat]? {
        
        switch indexPath.row {
        case 3,4,5:
            return [200]
        default:
            break
        }
        return nil
    }
    
    func expandableTableView(_ expandableTableView: ExpandableTableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 3,4,5:
            let cell:CourseRecordingHeaderTVCell = mainTableView.cellForRow(at: indexPath) as! CourseRecordingHeaderTVCell
            
            if cell.isOpen == false {
                UIView.animate(withDuration: 0.3) {() -> Void in
                    cell.isOpen = true
                    cell.arrowImageView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 1.0, 0.0, 0.0)
                }
            } else {
                UIView.animate(withDuration: 0.3) {() -> Void in
                    cell.isOpen = false
                    cell.arrowImageView.layer.transform = CATransform3DMakeRotation(CGFloat(Double.pi), 0.0, 0.0, 0.0)
                }
            }
        default:
            break
        }
    }
    
    func expandableTableView(_ expandableTableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return true
    }
}
