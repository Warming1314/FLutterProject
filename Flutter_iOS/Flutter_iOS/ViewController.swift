//
//  ViewController.swift
//  Flutter_iOS
//
//  Created by PXCM-0101-01-0049 on 2019/8/29.
//  Copyright © 2019 PXCM-0101-01-0049. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @objc func handleButtonAction() {
        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine
        let flutterViewController = FlutterViewController()
        self.present(flutterViewController, animated: true, completion: nil)
        
    }
    // 这里我改成了直接点击屏幕跳转
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        handleButtonAction();
    }


}

