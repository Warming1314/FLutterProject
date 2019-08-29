//
//  FirstViewController.swift
//  DayNightProject
//
//  Created by PXCM-0101-01-0049 on 2019/7/29.
//  Copyright © 2019年 PXCM-0101-01-0049. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    var firstPartView: FirstView = {
        let firstView = FirstView()
        firstView.backgroundColor = UIColor.yellow
        return firstView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        firstPartView.frame = CGRect(x: 40, y: 150, width: UIScreen.main.bounds.width-80, height: 100)
        self.view.addSubview(firstPartView)
        
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
