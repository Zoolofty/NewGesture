//
//  ViewController.swift
//  NiceGesture
//
//  Created by 周正飞 on 2018/4/27.
//  Copyright © 2018年 周正飞. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let testView = UIView(frame: view.bounds)
        testView.backgroundColor = UIColor.red
  
        testView.newTapGesture { (tap) in
            tap.numberOfTapsRequired = 1
            }.whenTaped { (tap) in
               print("单击")
        }
        
        testView.newPanGesture().whenChanged { (pan) in
            print(pan.translation(in: testView))
            }.whenBegan { (pan) in
                print("开始pan")
            }.whenEnded { (pan) in
                print("结束pan")
        }
        
        view.addSubview(testView)
   }

}

