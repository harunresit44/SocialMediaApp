//
//  StringExtension.swift
//  SocialRateApp
//
//  Created by ZTRMB1083 on 22.12.2024.
//

import UIKit

extension String {
    var  isValidMail : Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
    
    func isValidPhone() -> Bool{
        let phoneFormat = "^(\\+?[0-9]{2,3})?[0-9]{9,15}$"
        let phonePredicate = NSPredicate(format:"SELF MATCHES %@", phoneFormat)
        return phonePredicate.evaluate(with: self)
    }
    
    func isValidTc() -> Bool{
        let tcFormat = "^[0-9]{11}$"
        let tcPredicate = NSPredicate(format:"SELF MATCHES %@", tcFormat)
        return tcPredicate.evaluate(with: self)
    }
}

