//
//  OnBoarding.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 2/9/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import Foundation
import UIKit

class OnboardingView: UIView {
    
    var message: String!
    var imageName: String!
    var isLastPage: Bool! = false
    var color: UIColor!
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let subscribeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Subscribe Now", for: .normal)
        button.layer.cornerRadius = 10
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.layer.masksToBounds = true
        button.backgroundColor = UIColor(white: 1.0, alpha: 0.9)
        return button
    }()
    
    let messageLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = UIFont(name: "Helvetica", size: 20)
        label.textColor = UIColor(white: 1.0, alpha: 0.8)
        return label
    }()
    
    required init(message: String, imageName: String, isLastPage: Bool, color: UIColor) {
        super.init(frame: .zero)
        self.message = message
        self.imageName = imageName
        self.isLastPage = isLastPage
        self.color = color
        self.setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    private func setup(){
        self.backgroundColor = color
        self.addSubview(stackView)
        stackView.addArrangedSubview(imageView)
        stackView.widthAnchor.constraint(equalTo: self.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: self.layoutMarginsGuide.heightAnchor, multiplier: 0.5).isActive = true
        stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
        imageView.image = UIImage(named: self.imageName)
        imageView.heightAnchor.constraint(equalTo: stackView.heightAnchor, multiplier: 0.6).isActive = true
        
        messageLabel.text = message
        stackView.addArrangedSubview(messageLabel)
        
        if isLastPage {
            self.addSubview(subscribeButton)
            subscribeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 40).isActive = true
            subscribeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -40).isActive = true
            subscribeButton.topAnchor.constraint(equalTo: stackView.bottomAnchor).isActive = true
            subscribeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
    }

    func backgroundGradient(){
        let gradient = CAGradientLayer()
        gradient.colors = [color.cgColor, UIColor.white.cgColor]
        gradient.locations = [0.0, 3.0]
        gradient.frame = self.bounds
        layer.insertSublayer(gradient, at: 0)
    }
    
    override func layoutSubviews() {
        backgroundGradient()
    }
    
    
}
