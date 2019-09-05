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
class AppDelegate: UIResponder, UIApplicationDelegate, FlutterAppLifeCycleProvider {
    
    var window: UIWindow?
    
    var flutterEngine : FlutterEngine?
    
    var lifeCycleDelegate: FlutterPluginAppLifeCycleDelegate
    
    override init() {
        lifeCycleDelegate = FlutterPluginAppLifeCycleDelegate()
        super.init()
    }
    
    func addApplicationLifeCycleDelegate(_ delegate: FlutterPlugin) {
        lifeCycleDelegate.add(delegate)
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow.init()
        self.window?.frame = UIScreen.main.bounds
        self.window?.rootViewController = WMTabbarController()
        self.window?.makeKeyAndVisible()
        
        return lifeCycleDelegate.application(application, didFinishLaunchingWithOptions: launchOptions ?? [:])

    }

    func applicationWillResignActive(_ application: UIApplication) {
       lifeCycleDelegate.applicationWillResignActive(application)
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
       lifeCycleDelegate.applicationDidEnterBackground(application)
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        lifeCycleDelegate.applicationWillEnterForeground(application)
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        lifeCycleDelegate.applicationDidBecomeActive(application)
    }

    func applicationWillTerminate(_ application: UIApplication) {
        lifeCycleDelegate.applicationWillTerminate(application)
    }

}

