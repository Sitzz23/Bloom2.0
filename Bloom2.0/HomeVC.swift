//
//  HomeVC.swift
//  Bloom2.0
//
//  Created by Sitanshu Pokalwar on 21/03/23.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet var tabBar: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designtabBar()
        // Do any additional setup after loading the view.
    }
    
    func designtabBar(){
        tabBar.layer.cornerRadius = tabBar.frame.size.height/2
        
    }

}
