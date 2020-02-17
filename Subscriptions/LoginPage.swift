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
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    let loginButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.orange, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.backgroundColor = UIColor(white: 1.0, alpha: 0.9)
        return button
       }()
    
    let textField: UITextField = {
        let text = UITextField()
        text.backgroundColor = .gray
        text.translatesAutoresizingMaskIntoConstraints = false

        return text
    }()
    
    let passwordField: UITextField = {
        let text = UITextField()
        text.backgroundColor = .gray
        text.translatesAutoresizingMaskIntoConstraints = false

        return text
    }()
    
    func createStackView() {
        view.addSubview(stackView)
        stackView.widthAnchor.constraint(equalTo: view.layoutMarginsGuide.widthAnchor, multiplier: 0.65).isActive = true
        stackView.heightAnchor.constraint(equalTo: view.layoutMarginsGuide.heightAnchor, multiplier: 0.5).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func createButton(){
        view.addSubview(loginButton)
        loginButton.setTitle("Home", for: .normal)
        
        loginButton.addTarget(self, action: #selector(homePage), for: .touchUpInside)
        
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        loginButton.topAnchor.constraint(equalTo: stackView.bottomAnchor).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true

    }
    
    
    @objc func homePage(){
    }
    

    
    func createTextField() {
        view.addSubview(textField)
        textField.placeholder = "Username"
        textField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -60).isActive = true
    }
    
    func createPasswordField() {
        view.addSubview(passwordField)
        passwordField.placeholder = "Password"
        passwordField.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        passwordField.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -30).isActive = true
        passwordField.leadingAnchor.constraint(equalTo: textField.leadingAnchor).isActive = true
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createStackView()
        createButton()
        createTextField()
        createPasswordField()
        view.backgroundColor = .orange
    }
}
