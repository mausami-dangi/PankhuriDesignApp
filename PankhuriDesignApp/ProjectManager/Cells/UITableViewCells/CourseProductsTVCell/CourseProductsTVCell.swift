//
//  CourseProductsTVCell.swift
//  PankhuriDesignApp
//
//  Created by Mausami Dangi on 31/05/21.
//

import UIKit

class CourseProductsTVCell: UITableViewCell {

    //MARK:- IB_OUTLETS
    @IBOutlet weak var productsCollectionView: UICollectionView!
    @IBOutlet weak var productsHeaderLbl: UILabel!
    
    
    //MARK:- CELL_METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    
    //MARK:- OTHER_METHODS
    func setupView() {
        
        productsHeaderLbl.setupLabel(title: "Products used in the course", fontSize: AppFont.size16.bold, textColor: sColorDarkGray)
        
        self.productsCollectionView.delegate = self
        self.productsCollectionView.dataSource = self
        
        productsCollectionView.register(UINib(nibName: "CourseProductsItemsCVCell", bundle: nil), forCellWithReuseIdentifier: "CourseProductsItemsCVCell")
    }
    
}


//MARK:- EXTENSION: UICollectionView Delegate & Datasource
extension CourseProductsTVCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = productsCollectionView.dequeueReusableCell(withReuseIdentifier: "CourseProductsItemsCVCell", for: indexPath) as! CourseProductsItemsCVCell
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize{
        let size = CGSize(width: 180, height: 260)
        return size
    }
}
