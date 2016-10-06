//
//  UserDefaults+helpers.swift
//  Walkthrough
//
//  Created by Jorge Casariego on 6/10/16.
//  Copyright © 2016 Jorge Casariego. All rights reserved.
//

import Foundation


extension UserDefaults {
    enum UserDefaultsKeys: String  {
        case isLoggedIn
    }
    
    func setIsLoggedIn(value: Bool) {
        set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)
        synchronize()
    }
    
    func isLoggedIn() -> Bool {
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }
}
