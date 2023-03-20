//
//  ExploreCollectionViewCell.swift
//  Bloom2.0
//
//  Created by Sitanshu Pokalwar on 21/03/23.
//

import UIKit

class ExploreCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var mainLbl: UILabel!
    
    
    func setLabel(label:String) {
            mainLbl.text = label
        }
    
    
}
