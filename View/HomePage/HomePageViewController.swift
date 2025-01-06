//
//  HomePageViewController.swift
//  SocialMediaApp
//
//  Created by ZTRMB1083 on 27.12.2024.
//

import UIKit

class HomePageViewController: BaseViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCardTableViewCell", for: indexPath) as! UserCardTableViewCell
        
        return cell
    }
    
    
    
}
