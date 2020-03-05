//
//  TabBarController.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/5/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import SwiftUI
import UIKit

class TabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        self.delegate = self
        //self.tabBar.barTintColor = UIColor.purple
        //self.tabBar.tintColor = UIColor.yellow
    }
    
    func setupViewControllers() {
        
        let hvc = HomeViewController()
        hvc.title = "Home"
        hvc.tabBarItem = UITabBarItem(title: hvc.title, image: UIImage(named: "home"), selectedImage: UIImage(named: "home"))
        let homeNav = UINavigationController(rootViewController: hvc)

        let nb = NewBoxesViewController()
        nb.title = "New Box"
        nb.tabBarItem = UITabBarItem(title: nb.title, image: UIImage(named: "newbox"), selectedImage: UIImage(named: "newbox"))
        let nbNav = UINavigationController(rootViewController: nb)
        
        let history = HistoryBoxes()
        history.title = "History"
        let boxesH = UINavigationController(rootViewController: history)
        history.tabBarItem = UITabBarItem(title: history.title, image: UIImage(named: "trophy"), selectedImage: UIImage(named: "trophy"))

        let profileVC = ContentView()
        let profNavVC = UIHostingController(rootView: profileVC)
        let profileNav = UINavigationController(rootViewController: profNavVC)
        profileNav.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "user"), tag: 0)
        
        viewControllers = [homeNav, nbNav, boxesH, profileNav]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        print("Selected a new view controller")
    }
}
