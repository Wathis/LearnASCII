//
//  WATabBarController.swift
//  LearnAscii
//
//  Created by Mathis Delaunay on 27/01/2018.
//  Copyright © 2018 Wathis. All rights reserved.
//

import UIKit

class WATabBarController: UITabBarController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadViewController()
        self.tabBar.barTintColor = UIColor(rgb: 0x50597A)
    }
    func loadViewController() {
        self.viewControllers = [createAViewController(controller: WATableController(), image: #imageLiteral(resourceName: "table")),
                                createAViewController(controller: WAHomeController(), image: #imageLiteral(resourceName: "home")),
                                createAViewController(controller: WAParametersController(), image: #imageLiteral(resourceName: "settings"))]
        self.selectedIndex = 1
    }
    
    private func createAViewController(controller : UIViewController, image : UIImage) -> UINavigationController {
        let controller = controller
        controller.view.backgroundColor = UIColor(rgb: 0x202341)
        let navController = UINavigationController(rootViewController: controller)
        navController.tabBarItem.image = image.withRenderingMode(.alwaysOriginal)
        navController.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        let layer = navController.navigationBar.layer
        layer.shadowRadius = 8
        layer.shadowOpacity = 0.3
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 5)
        return navController
    }
}
