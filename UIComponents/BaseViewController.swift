//
//  BaseViewController.swift
//  SocialMediaApp
//
//  Created by ZTRMB1083 on 22.12.2024.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let titleView = UIView()

                let logoImageView = UIImageView()
                logoImageView.image = UIImage(named: "view")
                
                let titleLabel = UILabel()
                titleLabel.text = "Social Media"
                titleLabel.font = UIFont.boldSystemFont(ofSize: 17)
                titleLabel.textColor = .black
                
                titleView.addSubview(logoImageView)
                titleView.addSubview(titleLabel)

                logoImageView.translatesAutoresizingMaskIntoConstraints = false
                titleLabel.translatesAutoresizingMaskIntoConstraints = false
                
                NSLayoutConstraint.activate([
                    logoImageView.leadingAnchor.constraint(equalTo: titleView.leadingAnchor),
                    logoImageView.centerYAnchor.constraint(equalTo: titleView.centerYAnchor),
                    logoImageView.widthAnchor.constraint(equalToConstant: 30), // Logo genişliği
                    logoImageView.heightAnchor.constraint(equalToConstant: 30), // Logo yüksekliği
                    
                    titleLabel.leadingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: 8),
                    titleLabel.centerYAnchor.constraint(equalTo: titleView.centerYAnchor),
                    titleLabel.trailingAnchor.constraint(equalTo: titleView.trailingAnchor)
                ])
                
                titleView.sizeToFit()
                
                self.navigationItem.titleView = titleView
    
    }

}
