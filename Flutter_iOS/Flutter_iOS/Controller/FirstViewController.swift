//
//  FirstViewController.swift
//  DayNightProject
//
//  Created by PXCM-0101-01-0049 on 2019/7/29.
//  Copyright © 2019年 PXCM-0101-01-0049. All rights reserved.
//

import UIKit
import Flutter

class FirstViewController: UIViewController {

    var pushButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setTitle("点击后进入Flutter页面", for: .normal)
        btn.setTitleColor(UIColor.lightGray, for: .normal)
        btn.backgroundColor = UIColor.yellow
        return btn
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        pushButton.addTarget(self, action: #selector(pushAction), for: .touchUpInside)
        pushButton.frame = CGRect(x: 50, y: 150, width: UIScreen.main.bounds.width-100, height: 70)
        self.view.addSubview(pushButton)
        
    }
    
    @objc func pushAction(){
        let flutterViewController = FlutterViewController()
        flutterViewController.title = "这是一个flutter页面"
        //flutterViewController.setInitialRoute("myApp")
        self.navigationController?.pushViewController(flutterViewController, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
