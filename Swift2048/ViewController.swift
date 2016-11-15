//
//  ViewController.swift
//  Swift2048
//
//  Created by hjqixin on 16/10/10.
//  Copyright © 2016年 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func startGames(_ sender: UIButton) {
        let alert = UIAlertController.init(title: "开始游戏", message: "马上开始游戏", preferredStyle: UIAlertControllerStyle.alert)
        let okAction = UIAlertAction.init(title: "确定", style: UIAlertActionStyle.default) { (nil) in
            
            self.present(MainTabViewController.init(), animated: true, completion: nil)
            print("fdsjfjdskl")
        }
        let cancelAction = UIAlertAction.init(title: "取消", style: UIAlertActionStyle.cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

