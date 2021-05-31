//
//  ClassesTVCell.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 31/05/21.
//

import UIKit

class ClassesTVCell: UITableViewCell {

    //MARK:- IB_OUTLETS
    @IBOutlet weak var headerLbl: UILabel!
    @IBOutlet weak var classesCollectionView: UICollectionView!
    
    
    //MARK:- CELL_METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    //MARK:- OTHER_METHODS
    func setupView() {
        
        headerLbl.setupLabel(title: "Classes you may like", fontSize: AppFont.size16.bold, textColor: sColorDarkGray)
        
        self.classesCollectionView.delegate = self
        self.classesCollectionView.dataSource = self
        
        classesCollectionView.register(UINib(nibName: "ClassesItemsCVCell", bundle: nil), forCellWithReuseIdentifier: "ClassesItemsCVCell")
    }
    
}


//MARK:- EXTENSION: UICollectionView Delegate & Datasource
extension ClassesTVCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = classesCollectionView.dequeueReusableCell(withReuseIdentifier: "ClassesItemsCVCell", for: indexPath) as! ClassesItemsCVCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size = CGSize(width: 180, height: 240)
        return size
    }
}
