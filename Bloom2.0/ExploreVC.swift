//
//  ExploreVC.swift
//  Bloom2.0
//
//  Created by Sitanshu Pokalwar on 21/03/23.
//

import UIKit

class ExploreVC: UICollectionView, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    private var labels = ["Coding", "Cooking", "Music", "Science", "Painting", "Gardening", "Technology", "Maths", "Finance"]

       func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! ExploreCollectionViewCell
           
           cell.setLabel(label: labels[indexPath.row])
           return cell
       }
       
       required init?(coder aDecoder: NSCoder) {
           super.init(coder: aDecoder)
           self.dataSource = self
           self.delegate = self
       }
       func collectionView(_ collectionView: UICollectionView,
                           numberOfItemsInSection section: Int) -> Int {
           return labels.count
       }
       
       func collectionView(_ collectionView: UICollectionView, numberOfSections section: Int) -> Int {
           return 1
       }
       
       func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize
       {
           return CGSize(width: 80, height: 20)
       }

}
