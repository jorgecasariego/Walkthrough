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
        return false
    }
    
    func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated: true) { 
            //Perhaps we'll do something here later
        }
    }
}

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "You're logged In"
        
        let imageView = UIImageView(image: UIImage(named: "home"))
        view.addSubview(imageView)
        
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}
