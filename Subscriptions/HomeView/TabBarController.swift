//
//  TabBarController.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/5/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import SwiftUI
import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        self.delegate = self
    }
    
    func setupViewControllers() {
        
        let hvc = HomeViewController()
        hvc.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), tag: 0)
        let homeNav = UINavigationController(rootViewController: hvc)

        let nb = NewBoxesViewController()
        nb.tabBarItem = UITabBarItem(title: "New Box", image: UIImage(named: "newbox"), tag: 0)
        let nbNav = UINavigationController(rootViewController: nb)
        
        let history = HistoryBoxes()
        let boxesH = UINavigationController(rootViewController: history)
        history.tabBarItem = UITabBarItem(title: "History", image: UIImage(named: "trophy"), tag: 0)

        
        viewControllers = [homeNav, nbNav, boxesH]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension TabBarController: UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
    }
}
