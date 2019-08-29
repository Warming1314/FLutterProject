//
//  FirstView.swift
//  DayNightProject
//
//  Created by PXCM-0101-01-0049 on 2019/7/29.
//  Copyright © 2019年 PXCM-0101-01-0049. All rights reserved.
//

import UIKit

class FirstView: UIView {
    
    var firstButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setTitle("这是第一页的button", for: .normal)
        btn.setTitleColor(UIColor.lightGray, for: .normal)
        btn.backgroundColor = UIColor.white
        return btn
    }()
    
    var firstLabel: UILabel = {
        let label = UILabel()
        label.text = "这是第一页的标签"
        label.textColor = UIColor.lightGray
        label.backgroundColor = UIColor.white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame:frame)
        addSubview(firstButton)
        addSubview(firstLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        firstLabel.frame = CGRect(x: 10, y: 10, width: 200, height: 20)
        firstButton.frame = CGRect(x: 10, y: 40, width: 200, height: 20)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
