//
//  CustomVerifyCodeTextField.swift
//  SocialMediaApp
//
//  Created by ZTRMB1083 on 27.12.2024.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {

    var digitLabels = [UILabel]()

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    private func setup() {
        // TextField özellikleri
        self.keyboardType = .numberPad
        self.textColor = .clear
        self.tintColor = .clear

        addTarget(self, action: #selector(textDidChange), for: .editingChanged)
        createDigitLabels()
    }

    private func createDigitLabels() {
        let stackView = UIStackView()
        stackView.spacing = 12
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false

        for _ in 0..<6 {
            let label = UILabel()
            label.backgroundColor = .lightGray
            label.textAlignment = .center
            label.font = UIFont.systemFont(ofSize: 24)
            label.layer.cornerRadius = 4
            label.clipsToBounds = true

            digitLabels.append(label)
            stackView.addArrangedSubview(label)
        }

        addSubview(stackView)

        // Constraints for stackView
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            heightAnchor.constraint(equalToConstant: 48)
        ])
    }

    @objc private func textDidChange() {
        guard let text = self.text, text.count <= 6 else { return }

        for (index, label) in digitLabels.enumerated() {
            if index < text.count {
                let startIndex = text.index(text.startIndex, offsetBy: index)
                let endIndex = text.index(startIndex, offsetBy: 1)
                let character = String(text[startIndex..<endIndex])
                label.text = character
            } else {
                label.text = ""
            }
        }
    }
}

