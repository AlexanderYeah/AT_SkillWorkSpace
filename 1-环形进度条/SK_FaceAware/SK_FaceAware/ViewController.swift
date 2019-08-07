//
//  ViewController.swift
//  SK_FaceAware
//
//  Created by coder on 2019/8/6.
//  Copyright © 2019 AlexanderYeah. All rights reserved.
//

import UIKit
import UICircularProgressRing
class ViewController: UIViewController {

    
    var progress:UICircularProgressRing!;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.progress = UICircularProgressRing(frame: CGRect(x: 50, y: 200, width: 200, height: 200));
        self.progress.backgroundColor = UIColor.white;
        
        self.progress.style = .ontop;
        // 最大值
        self.progress.maxValue = 100;
        // 进度值的显示颜色
        self.progress.fontColor = UIColor.gray;
        
        // 内环圆头  square  round  butt
        
        self.progress.innerCapStyle = .round;
        // 内环宽度
        self.progress.innerRingWidth = 5;
        
        self.progress.innerRingSpacing = 0;
        // 进度条颜色
        self.progress.innerRingColor = UIColor.red;
        // 外环
        self.progress.outerRingWidth = 5;
        self.progress.outerRingColor = UIColor.gray;

//
        
        // 动画效果 linear 线性  easeIn 渐入  easeOut 渐出  easeInEaseOut  渐入渐出
        self.progress.animationTimingFunction = CAMediaTimingFunctionName(rawValue: CAMediaTimingFunctionName.easeIn.rawValue);
        

        self.view.addSubview(self.progress);
        let btn = UIButton.init();
        btn.frame = CGRect(x: 50, y: 450, width: 120, height: 50);
        btn.setTitle("Start", for: UIControl.State.normal);
        btn.setTitleColor(UIColor.black, for: UIControl.State.normal);
        btn.backgroundColor = UIColor.cyan;
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 15);
        btn.addTarget(self, action: #selector(btnClick), for: UIControl.Event.touchUpInside);
        self.view.addSubview(btn)
        
 
    }
    
    
    
    @objc func btnClick(btn:UIButton){
        
        btn.isSelected = !btn.isSelected;
        
        if btn.isSelected {
            // 4 秒时间 进度条到达100
            self.progress.startProgress(to: 100, duration: 2){
                
                
            }
        }else{
            self.progress.resetProgress();
        }

    
    }


}

