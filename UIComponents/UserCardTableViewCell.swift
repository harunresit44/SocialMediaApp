//
//  UserCardTableViewCell.swift
//  SocialMediaApp
//
//  Created by ZTRMB1083 on 27.12.2024.
//

import UIKit

class UserCardTableViewCell: UITableViewCell {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var userImageImageView: UIImageView!
    @IBOutlet weak var dividerView: UIView!
    @IBOutlet weak var userCommentLabel: UILabel!
    @IBOutlet weak var bottomRatingView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        bottomRatingView.layer.cornerRadius = 10
        
        mainView.layer.cornerRadius = 10
        mainView.clipsToBounds = true
        mainView.layer.borderWidth = 0.2
        mainView.layer.borderColor = UIColor.lightGray.cgColor
        
        dividerView.layer.borderColor = UIColor.lightGray.withAlphaComponent(0.1).cgColor
        dividerView.layer.borderWidth = 1
        
        
        userImageImageView.contentMode = .scaleAspectFill
        userImageImageView.layer.masksToBounds = false
        userImageImageView.layer.cornerRadius = userImageImageView.frame.width / 2
        userImageImageView.clipsToBounds = true
    
        
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
