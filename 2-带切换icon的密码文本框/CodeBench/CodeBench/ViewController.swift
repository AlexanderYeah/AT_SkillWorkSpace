//
//  ViewController.swift
//  CodeBench
//
//  Created by coder on 2019/8/7.
//  Copyright © 2019 AlexanderYeah. All rights reserved.
//

import UIKit
import PasswordTextField
class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let passwordField = PasswordTextField(frame: CGRect(x: 50, y: 100, width: 200, height: 50));
        passwordField.layer.cornerRadius = 4;
        // 展示密码图标 总是展示
        passwordField.backgroundColor = UIColor.gray;
        passwordField.borderStyle = .none;
        // Editing 编辑时候展示
        passwordField.showButtonWhile = .Editing;
        // 图标的颜色
        passwordField.imageTintColor = .orange;
        passwordField.customShowSecureTextImage = UIImage.init(named: "不显示密码");
        passwordField.customHideSecureTextImage = UIImage.init(named: "显示密码");
        self.view.addSubview(passwordField);
        
    }


}

