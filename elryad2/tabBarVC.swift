//
//  tabBarVC.swift
//  elryad2
//
//  Created by Ahmed on 10/26/19.
//  Copyright © 2019 Ahmed. All rights reserved.
//

import UIKit

class tabBarVC:  UITabBarController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tabBar.barTintColor =  #colorLiteral(red: 0.9763785005, green: 0.976518929, blue: 0.9763465524, alpha: 1)
        
        UITabBar.appearance().tag = 2
        self.selectedIndex = 0
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
}
