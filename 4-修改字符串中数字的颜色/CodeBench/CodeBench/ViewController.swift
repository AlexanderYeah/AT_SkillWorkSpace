//
//  ViewController.swift
//  CodeBench
//
//  Created by coder on 2019/8/7.
//  Copyright © 2019 AlexanderYeah. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let lbl = UILabel.init(frame: CGRect(x: 50, y: 100, width: 250, height: 50));
        lbl.text = "100 件 / 500 单 / 2500.00 元";
        lbl.attributedText = lbl.text?.numberChange(color: UIColor.red, font: UIFont.systemFont(ofSize: 15));
        
        self.view.addSubview(lbl);
    }


}

