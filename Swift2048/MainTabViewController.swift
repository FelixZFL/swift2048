//
//  MainTabViewController.swift
//  Swift2048
//
//  Created by hjqixin on 16/10/12.
//  Copyright © 2016年 Felix. All rights reserved.
//

import UIKit

class MainTabViewController: UITabBarController {
    init() {
        super.init(nibName: nil, bundle: nil)
        
        let viewMain = MainViewController()
        viewMain.title = "2048"
        
        let viewSetting = settingViewController()
        viewSetting.title = "设置"
        
        let main = UINavigationController.init(rootViewController: viewMain)
        let set = UINavigationController.init(rootViewController: viewSetting)
        
        self.viewControllers = [main,set]
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
