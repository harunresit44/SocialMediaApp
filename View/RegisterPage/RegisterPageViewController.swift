//
//  KayitOlViewController.swift
//  SocialRateApp
//
//  Created by ZTRMB1083 on 19.12.2024.
//

import Foundation
import UIKit


class RegisterPageViewController: BaseViewController {
    
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var nameSurnameTextField: UITextField!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var passwordRepeatTextField: UITextField!
    @IBOutlet weak var contractsAgreementButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.hideShowPassword()
        passwordRepeatTextField.hideShowPassword()
                
        
        }
    
    @IBAction func contactAgrementButtonTapped(_ sender: Any) {
        if contractsAgreementButton.backgroundColor == nil {
            contractsAgreementButton.backgroundColor = UIColor(hex: "8355E8")
        }else if contractsAgreementButton.backgroundColor == UIColor(hex: "8355E8") {
            contractsAgreementButton.backgroundColor = nil
        }
        

    }
    @IBAction func registerButtonTapped(_ sender: Any) {
    }
    
    @IBAction func logInPageButtonTapped(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
        
}
    

