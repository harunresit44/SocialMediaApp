//
//  TabBarController.swift
//  SocialMediaApp
//
//  Created by ZTRMB1083 on 3.01.2025.
//

import UIKit

class TabBarController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tabBarView = UIView()
        tabBarView.backgroundColor = .lightGray
        tabBarView.layer.cornerRadius = 20
        tabBarView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tabBarView)
        
        NSLayoutConstraint.activate([
            tabBarView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -32),
            tabBarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            tabBarView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            tabBarView.heightAnchor.constraint(equalToConstant: 48)
        
        ])
        
        let buttonTitles = ["Home", "Search", "Profile"]
                var previousButton: UIButton? = nil

                for title in buttonTitles {
                    let button = UIButton(type: .system)
                    button.setTitle(title, for: .normal)
                    button.setTitleColor(.black, for: .normal)
                    button.translatesAutoresizingMaskIntoConstraints = false
                    tabBarView.addSubview(button)

                    // Auto Layout
                    NSLayoutConstraint.activate([
                        button.topAnchor.constraint(equalTo: tabBarView.topAnchor),
                        button.bottomAnchor.constraint(equalTo: tabBarView.bottomAnchor),
                        button.widthAnchor.constraint(equalToConstant: 100)
                    ])

                    if let previousButton = previousButton {
                        button.leadingAnchor.constraint(equalTo: previousButton.trailingAnchor).isActive = true
                    } else {
                        button.leadingAnchor.constraint(equalTo: tabBarView.leadingAnchor, constant: 16).isActive = true
                    }

                    previousButton = button
                }

                // Son buton sağa hizalansın
                if let lastButton = previousButton {
                    lastButton.trailingAnchor.constraint(equalTo: tabBarView.trailingAnchor, constant: -16).isActive = true
                }
        
        
    }
    
    
    
    
    
}
