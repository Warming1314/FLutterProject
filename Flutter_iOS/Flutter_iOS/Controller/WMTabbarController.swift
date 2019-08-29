//
//  WMTabbarController.swift
//  DayNightProject
//
//  Created by PXCM-0101-01-0049 on 2019/7/29.
//  Copyright © 2019年 PXCM-0101-01-0049. All rights reserved.
//

import UIKit

class WMTabbarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstVC = FirstViewController()
        let secondVC = SecondViewController()
        self.addChildViewController(childVC: firstVC, title: "第一页", normalImage: "ic_tab_invest_normal", selectedImage: "ic_tab_invest_active")
        self.addChildViewController(childVC: secondVC, title: "第二页", normalImage: "ic_tab_vip_default", selectedImage: "ic_tab_vip_selected")

        // Do any additional setup after loading the view.
    }
    
    func addChildViewController(childVC:UIViewController, title:String ,normalImage:String, selectedImage:String){
        self.tabBarItem.title = title as String
        childVC.title = title as String
        var norImg = UIImage(named:normalImage as String)
        norImg = norImg?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        var selImg = UIImage(named:selectedImage as String)
        selImg = selImg?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        let tabItem = UITabBarItem(title: title as String, image: norImg,selectedImage: selImg)
        
        let naVc = WMNavigationController()
        
        naVc.tabBarItem = tabItem
        
        naVc.addChild(childVC)
        
        self.addChild(naVc)
        
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
