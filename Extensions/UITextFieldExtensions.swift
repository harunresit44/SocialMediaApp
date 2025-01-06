import UIKit

extension UITextField {
    
    func hideShowPassword() {
        self.isSecureTextEntry = true

        let imageIcon = UIImageView()
        imageIcon.image = UIImage(named: "view-off-slash")
        
        let contentView = UIView()
        contentView.addSubview(imageIcon)
        
        contentView.frame = CGRect(x: 0, y: 0, width: imageIcon.image!.size.width, height: imageIcon.image!.size.height)
        imageIcon.frame = CGRect(x: -10, y: 0, width: imageIcon.image!.size.width, height: imageIcon.image!.size.height)
        
        self.rightView = contentView
        self.rightViewMode = .always

        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageIconTapped))
        contentView.addGestureRecognizer(tapGestureRecognizer)
        imageIcon.isUserInteractionEnabled = true
    }
    
    @objc func imageIconTapped() {
        print(self.isSecureTextEntry)
        guard let imageIcon = self.rightView!.subviews[0] as? UIImageView else { return }
        
        switch isSecureTextEntry {
        case false:
            self.isSecureTextEntry.toggle()
            imageIcon.image = UIImage(named: "view-off-slash")
        case true:
            self.isSecureTextEntry.toggle()
            imageIcon.image = UIImage(named: "view")
        }
    }
}
