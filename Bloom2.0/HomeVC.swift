//
//  HomeVC.swift
//  Bloom2.0
//
//  Created by Sitanshu Pokalwar on 21/03/23.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet var tabBar: UIView!
    
    @IBOutlet var contentView: UIView!
    
    @IBAction func onClickTabBar(_ sender: UIButton) {
        let tag = sender.tag
        
        print(tag)
        
        if tag == 1 {
            guard let Main = self.storyboard?.instantiateViewController(identifier: "MainVC") as? MainVC
            else{
                return
            }
            contentView.addSubview(Main.view)
            Main.didMove(toParent: self)
        }
        else if tag == 2 {
            guard let Passes = self.storyboard?.instantiateViewController(identifier: "PassesVC") as? PassesVC
            else{
                return
            }
            contentView.addSubview(Passes.view)
            Passes.didMove(toParent: self)
        }
        else if tag == 3 {
            guard let Event = self.storyboard?.instantiateViewController(identifier: "NewEventVC") as? NewEventVC
            else{
                return
            }
            contentView.addSubview(Event.view)
            Event.didMove(toParent: self)
        }
        else {
            guard let Profile = self.storyboard?.instantiateViewController(identifier: "ProfileVC") as? ProfileVC
            else{
                return
            }
            contentView.addSubview(Profile.view)
            Profile.didMove(toParent: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designtabBar()
        // Do any additional setup after loading the view.
        
        guard let Main = self.storyboard?.instantiateViewController(identifier: "MainVC") as? MainVC
        else{return}
        contentView.addSubview(Main.view)
        Main.didMove(toParent: self)
    }
    
    func designtabBar(){
        tabBar.layer.cornerRadius = tabBar.frame.size.height/2
        
    }

}
