//
//  HomeViewController.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 2/18/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let pastBoxes: UIButton = {
        let past = UIButton()
        past.translatesAutoresizingMaskIntoConstraints = false
        past.setTitleColor(UIColor.red, for: .normal)
        past.layer.cornerRadius = 30
        past.layer.masksToBounds = true
        past.backgroundColor = UIColor(white: 1.0, alpha: 0.5)
        return past
    }()
    
    let presentBoxes: UIButton = {
        let present = UIButton()
        present.translatesAutoresizingMaskIntoConstraints = false
        present.setTitleColor(UIColor.red, for: .normal)
        present.layer.cornerRadius = 30
        present.layer.masksToBounds = true
        present.backgroundColor = UIColor(white: 1.0, alpha: 0.5)
        return present
    }()
    
    let favoriteBoxes: UIButton = {
        let favorite = UIButton()
        favorite.translatesAutoresizingMaskIntoConstraints = false
        favorite.setTitleColor(UIColor.red, for: .normal)
        favorite.layer.cornerRadius = 30
        favorite.layer.masksToBounds = true
        favorite.backgroundColor = UIColor(white: 1.0, alpha: 0.5)
        return favorite
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution = .fill
        return stackView
    }()
    
    func createButton(){
        view.addSubview(presentBoxes)
        presentBoxes.setTitle("Home", for: .normal)
        
        //presentBoxes.addTarget(self, action: #selector(HomePage), for: .touchUpInside)
        
        presentBoxes.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        presentBoxes.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
        presentBoxes.topAnchor.constraint(equalTo: stackView.bottomAnchor).isActive = true
        presentBoxes.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
}
