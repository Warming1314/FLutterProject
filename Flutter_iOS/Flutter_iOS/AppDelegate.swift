//
//  AppDelegate.swift
//  Flutter_iOS
//
//  Created by PXCM-0101-01-0049 on 2019/8/29.
//  Copyright © 2019 PXCM-0101-01-0049. All rights reserved.
//

import UIKit
import Flutter

@UIApplicationMain
class AppDelegate: FlutterAppDelegate {
    
    var flutterEngine : FlutterEngine?
    
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init()
        self.window?.frame = UIScreen.main.bounds
        self.window?.rootViewController = WMTabbarController()
        self.window?.makeKeyAndVisible()
        
        self.flutterEngine = FlutterEngine(name: "io.flutter", project: nil)
        self.flutterEngine?.run(withEntrypoint: nil)
        return super.application(application, didFinishLaunchingWithOptions: launchOptions);
    }
    
    
    override func applicationWillResignActive(_ application: UIApplication) {
        
    }
    
    
    override func applicationDidEnterBackground(_ application: UIApplication) {
     
    }
    
    
    override func applicationWillEnterForeground(_ application: UIApplication) {
      
    }
    
    
    override func applicationDidBecomeActive(_ application: UIApplication) {

    }
    
    
    override func applicationWillTerminate(_ application: UIApplication) {
    
    }
}


//@UIApplicationMain
////改造AppDelegate，转发代理消息
////使用到的代码，都改为一下方式，使用lifeCycleDelegate调用转发一次
//class AppDelegate: UIResponder, UIApplicationDelegate, FlutterAppLifeCycleProvider {
//
//    var window: UIWindow?
//
//    var flutterEngine : FlutterEngine?
//
//    //var lifeCycleDelegate: FlutterPluginAppLifeCycleDelegate
//
//    let lifeCycleDelegate = FlutterPluginAppLifeCycleDelegate()
//
//    var rootFlutterViewController: FlutterViewController? {
//        let viewController = UIApplication.shared.keyWindow?.rootViewController
//        if viewController!.isKind(of: FlutterViewController.self) {
//            return viewController as? FlutterViewController
//        }
//        return nil
//    }
//
//    func addApplicationLifeCycleDelegate(_ delegate: FlutterPlugin) {
//        lifeCycleDelegate.add(delegate)
//    }
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        if launchOptions == nil{
//            return true
//        }else{
//            return lifeCycleDelegate.application(application, didFinishLaunchingWithOptions: launchOptions!)
//        }
//        window = UIWindow.init()
//        self.window?.frame = UIScreen.main.bounds
//        self.window?.rootViewController = WMTabbarController()
//        self.window?.makeKeyAndVisible()
////        return lifeCycleDelegate.application(application, didFinishLaunchingWithOptions: launchOptions ?? [:])
//    }
//
//    func applicationWillResignActive(_ application: UIApplication) {
//       lifeCycleDelegate.applicationWillResignActive(application)
//    }
//
//    func applicationDidEnterBackground(_ application: UIApplication) {
//       lifeCycleDelegate.applicationDidEnterBackground(application)
//    }
//
//    func applicationWillEnterForeground(_ application: UIApplication) {
//        lifeCycleDelegate.applicationWillEnterForeground(application)
//    }
//
//    func applicationDidBecomeActive(_ application: UIApplication) {
//        lifeCycleDelegate.applicationDidBecomeActive(application)
//    }
//
//    func applicationWillTerminate(_ application: UIApplication) {
//        lifeCycleDelegate.applicationWillTerminate(application)
//    }
//
//    //MARK: -
//
//}

