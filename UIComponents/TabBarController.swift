//
//  TabBarController.swift
//  SocialMediaApp
//
//  Created by ZTRMB1083 on 3.01.2025.
//

import UIKit

struct TabBarSetupController {
    
    
    func setupTabBar(view: UIView) {
        
        let tabBarView = UIView()
        tabBarView.backgroundColor = UIColor(named: "SecondaryColor")
        tabBarView.layer.shadowOffset = CGSize(width: 0, height: 1)
        tabBarView.layer.shadowColor = UIColor.black.cgColor
        tabBarView.layer.shadowOpacity = 0.1
        tabBarView.layer.cornerRadius = 10
        tabBarView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tabBarView)
        
        NSLayoutConstraint.activate([
            tabBarView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40),
            tabBarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            tabBarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -28),
            tabBarView.heightAnchor.constraint(equalToConstant: 48)
            
        ])
        
        
        let buttonIconNames = ["home", "search"]

        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false

        tabBarView.addSubview(stackView)

        for iconName in buttonIconNames {
            let button = UIButton(type: .system)
            button.setImage(UIImage(named: iconName), for: .normal)
            button.imageView?.contentMode = .scaleAspectFit
            stackView.addArrangedSubview(button)
            
            NSLayoutConstraint.activate([
                button.widthAnchor.constraint(equalToConstant: 24),
                button.heightAnchor.constraint(equalToConstant: 24)
            ])
            
        }

        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: tabBarView.leadingAnchor, constant: 32),
            stackView.trailingAnchor.constraint(equalTo: tabBarView.trailingAnchor, constant: -32),
            stackView.centerYAnchor.constraint(equalTo: tabBarView.centerYAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 48),
        ])
        
        let profileImageview = UIImageView(image: UIImage(named: "user_image"))
        profileImageview.contentMode = .scaleAspectFill
        profileImageview.layer.cornerRadius = 12
        profileImageview.isUserInteractionEnabled = true
        profileImageview.clipsToBounds = true
        
        NSLayoutConstraint.activate([
            profileImageview.widthAnchor.constraint(equalToConstant: 24),
            profileImageview.heightAnchor.constraint(equalToConstant: 24)
        ])
        
        stackView.addArrangedSubview(profileImageview)

        
    }
    
    
}







