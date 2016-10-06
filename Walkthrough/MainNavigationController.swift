//
//  MainNavigationController.swift
//  Walkthrough
//
//  Created by Jorge Casariego on 30/9/16.
//  Copyright © 2016 Jorge Casariego. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        if isLoggedIn() {
            // asume user is lodgged in
            let homeController = HomeController()
            //viewControllers is a property that exist in UINavigationController and it is an array of all the controllers that exists in the navigation stack
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return UserDefaults.standard.isLoggedIn()
    }
    
    func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated: true) { 
            //Perhaps we'll do something here later
        }
    }
}
