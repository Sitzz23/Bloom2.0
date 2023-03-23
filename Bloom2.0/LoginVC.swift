//
//  LoginVC.swift
//  Bloom2.0
//
//  Created by Inzamam on 24/03/23.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet var emailField: UITextField!
    @IBOutlet var pwField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        emailField.layer.cornerRadius = 10
        emailField.layer.borderWidth = 1.1
        emailField.layer.borderColor = UIColor(named: "myGray")?.cgColor
        
        pwField.layer.cornerRadius = 10
        pwField.layer.borderWidth = 1.1
        pwField.layer.borderColor = UIColor(named: "myGray")?.cgColor
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
