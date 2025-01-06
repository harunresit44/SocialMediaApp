//
//  ViewController.swift
//  SocialRateApp
//
//  Created by ZTRMB1083 on 18.12.2024.
//

import UIKit

class ViewController: BaseViewController {
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userNameTextBox: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var forgotPasswordLabel: UILabel!
    @IBOutlet weak var passwordTextBox: UITextField!
    @IBOutlet weak var logInLabel: UILabel!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        passwordTextBox.hideShowPassword()
        
    }
    

    
    @IBAction func logInButtonTapped(_ sender: Any) {
        
        let verifyStoryBoard = UIStoryboard(name: "VerifyPage", bundle: nil)
        
        if let verifyVC = verifyStoryBoard.instantiateViewController(withIdentifier: "VerifyPageID") as? VerifyPageViewController {
            
            navigationController?.pushViewController(verifyVC, animated: true)
            
        }
        
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        
        let registerStoryBoard = UIStoryboard(name: "Register", bundle: nil)
        
        if let registerVC = registerStoryBoard.instantiateViewController(withIdentifier: "RegisterStoryBoard") as? RegisterPageViewController {
            
            navigationController?.pushViewController(registerVC, animated: true)
            
        }
    }
        
    
}

