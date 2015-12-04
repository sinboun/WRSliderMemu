//
//  ViewController.swift
//  WRSliderMemuDemo
//
//  Created by 温锐 on 15/12/4.
//  Copyright © 2015年 wbg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var sliderMenu:WRSliderMemu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        sliderMenu=WRSliderMemu(sender: self)
        
        let leftView=UIView(frame: CGRect(x: 0, y: 0, width: 100, height: UIScreen.mainScreen().bounds.height))
        leftView.backgroundColor=UIColor.greenColor()
        
        sliderMenu.setContentView(leftView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func click(sender: AnyObject) {
        sliderMenu.switchMenu()
        
        
    }
}

