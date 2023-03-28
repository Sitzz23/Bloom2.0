//
//  ExploreCollectionViewCell.swift
//  Bloom2.0
//
//  Created by Sitanshu Pokalwar on 21/03/23.
//

import UIKit

class ExploreCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var mainLbl: UILabel!
    
  
    @IBOutlet var vview: ExploreCollectionViewCell!
    
    func setLabel(label:String) {
        mainLbl.text = label
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.layer.cornerRadius = 10
        
    }
}
