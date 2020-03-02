//
//  LoginPage.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 2/16/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import Foundation
import UIKit

class LoginPage: UIViewController {

    let logoLabel: UILabel = {
            let label = UILabel()
            label.text = "Dynasty Select"
            label.translatesAutoresizingMaskIntoConstraints = false
            label.textColor = UIColor.purple
            label.textAlignment = .center
            label.font = UIFont(name: "Copperplate", size: 40)
            return label
        }()
    
    let boxImage: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.image = UIImage(named: "box")
            return imageView
        }()
    
    let usernameTextField: LoginText = {
        let textField = LoginText(placeholder: "username")
        return textField
    }()
    
    let passwordTextField: LoginText = {
        let textField = LoginText(placeholder: "password")
        textField.isSecureTextEntry = true
        return textField
    }()
    
    let loginButton: UIButton = {
            let button = UIButton()
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Login", for: .normal)
            button.setTitleColor(UIColor.darkGray, for: .normal)
            button.layer.cornerRadius = 10
            button.layer.masksToBounds = true
            button.backgroundColor = UIColor(white: 1.0, alpha: 0.9)
            return button
        }()
        
    var titleConstraintStart: NSLayoutConstraint!
    var titleConstraintEnd: NSLayoutConstraint!
        
    override func viewDidAppear(_ animated: Bool) {
            titleConstraintStart.isActive = false
            titleConstraintEnd.isActive = true
            
            UIView.animate(withDuration: 1.0, delay: 0.2,
                usingSpringWithDamping: 0.5, initialSpringVelocity: 0.0, options: [], animations: {
                    self.view.layoutIfNeeded()
                    self.logoLabel.transform = CGAffineTransform(scaleX: 1, y: 1)
                }, completion: nil)
            UIView.animate(withDuration: 1.5, delay: 0.5, options: [], animations: {
                self.loginButton.alpha = 1
                },completion: nil)
            
        }
        
    override func viewDidLoad() {
            super.viewDidLoad()
            self.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
            createImage()
            createLabel()
            createButton()
            setTextFields()
        }
        
    func createImage(){
            self.view.addSubview(boxImage)
            boxImage.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            boxImage.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -20).isActive = true
        }
        
    func createButton(){
            //Creates button and adds constraints
            self.view.addSubview(loginButton)
            loginButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
            loginButton.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            loginButton.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -60).isActive = true
            loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
            loginButton.addTarget(self, action: #selector(HomePage), for: .touchUpInside)
            self.loginButton.alpha = 0
        }
    
    func createLabel(){
            self.view.addSubview(logoLabel)
            logoLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            titleConstraintEnd = logoLabel.centerYAnchor.constraint(equalTo: boxImage.topAnchor, constant: -60)
            titleConstraintStart = logoLabel.centerYAnchor.constraint(equalTo: boxImage.centerYAnchor, constant: 5)
            titleConstraintStart.isActive = true
            logoLabel.transform = CGAffineTransform(scaleX: 0, y: 0)

        }
        func setTextFields(){
            //Adds Username field
            self.view.addSubview(usernameTextField)
            usernameTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            usernameTextField.topAnchor.constraint(equalTo: boxImage.bottomAnchor, constant: 30).isActive = true
            usernameTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75).isActive = true
            //Adds Password field
            self.view.addSubview(passwordTextField)
            passwordTextField.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 15).isActive = true
            passwordTextField.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.75).isActive = true
        }

    @objc func HomePage(){
        self.view.window!.rootViewController = HomeViewController()
    }

}
