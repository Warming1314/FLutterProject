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
        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        flutterViewController?.title = "这是一个flutter页面"
        if let flutterVC = flutterViewController{
            self.navigationController?.pushViewController(flutterVC, animated: true)
        }
    }
}
