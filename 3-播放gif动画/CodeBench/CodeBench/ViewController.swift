//
//  ViewController.swift
//  CodeBench
//
//  Created by coder on 2019/8/7.
//  Copyright © 2019 AlexanderYeah. All rights reserved.
//

import UIKit
import SwiftGifOrigin


class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let imgView = UIImageView(frame: CGRect(x: 50, y: 100, width: 280, height: 200));
        
        imgView.loadGif(name: "gfff");
        self.view.addSubview(imgView);
    }


}

