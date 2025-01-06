//
//  VerifyPageController.swift
//  SocialMediaApp
//
//  Created by ZTRMB1083 on 27.12.2024.
//

import UIKit

class VerifyPageViewController: BaseViewController {
    
    @IBOutlet weak var verifyButton: UIButton!
    @IBOutlet weak var countDownTextField: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func sendAgainButtonTapped(_ sender: Any) {
    }
    
    @IBAction func verifyButtonTapped(_ sender: Any) {
        
        let homePageStoryBoard = UIStoryboard(name: "HomePage", bundle: nil)
        
        if let homePageVC = homePageStoryBoard.instantiateViewController(identifier: "HomePageID") as? HomePageViewController {
            
            navigationController?.pushViewController(homePageVC, animated: true)

        }
        
        
    }
    
}
