//
//  ViewController.swift
//  CodeBench
//
//  Created by coder on 2019/8/7.
//  Copyright © 2019 AlexanderYeah. All rights reserved.
//

import UIKit

import Toaster


class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 弹出文本 "Hello World"  延迟时间 2  展示时间 1
        Toast(text: "Hello World", delay: 1, duration: 15).show();
        
        //2 初始化toast 方法
//        let toast = Toast(text: "你好世界");
//        toast.show();
//        toast.cancel();
        
        // 3 设置样式
        // textInsets  cornerRadius  等等 可以自行设置
        ToastView.appearance().backgroundColor = UIColor.cyan;

        ToastView.appearance().textColor = .red;

        ToastView.appearance().font = UIFont.systemFont(ofSize: 25);
        
        // 距离屏幕下面的距离
        ToastView.appearance().bottomOffsetPortrait = 300;
        
        
    }


}

