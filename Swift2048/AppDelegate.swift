//
//  AppDelegate.swift
//  Swift2048
//
//  Created by hjqixin on 16/10/10.
//  Copyright © 2016年 Felix. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let arr:Array = [1,5,1,3,3,2,5,3,4,5]
        
        print(isError(arr: arr, m: 2, w: 2))
        
        
        return true
    }
    
    
    /*
     我们的程序运行过程中每分钟会采集一个整数的数据指标。
     持续采集n分钟就得到一个有n个元素的整数数组a[n]。
     现在我们需要一个简单的算法，检测采集到的数据指标中，是否有异常。
     异常的检测标准是：如果在连续m分钟内的指标的平均值大于w，则说明有异常。
     输入：数组a[n], 正整数m, 整数w
     返回：有异常返回 1，没有异常返回 0
     例如：对于a={1, 5, 1, 3, 2}, m=2, w=2, 返回:1
     附加说明：不同的实现方式执行效率不一样，如果能找到一个很高效的算法就更好了。
     */
    
    func isError(arr:Array<Int>,m:Int,w:Int) -> Bool {
        
        for i in arr {
            //test
            if i > 5 {
                print(i)
                var abc = i
                abc += 1
            }
            //test branch
        }
        return true
    }
    func test() -> () {
        print("this is a test ")
        //test branch
    }
    

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

