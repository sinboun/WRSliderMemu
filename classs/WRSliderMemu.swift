//
//  WRSliderMemu.swift
//  tybl
//
//  Created by 温锐 on 15/11/17.
//  Copyright © 2015年 wbg. All rights reserved.
//

import UIKit

class WRSliderMemu: UIView,UIGestureRecognizerDelegate {
    
    /** 菜单宽度 */
    let menuWith:CGFloat=100;
    
    var menuLeftView:UIView!
    
    var VC:UIViewController!
    
    var MenuSubView:UIView?
    

    private override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(sender:UIViewController){
        super.init(frame: sender.view.frame)
        
        self.backgroundColor=UIColor(red: 0, green: 0, blue: 0, alpha: 0)
        self.hidden=true
        self.VC=sender
        let tap:UITapGestureRecognizer=UITapGestureRecognizer(target: self, action: "hide")
        tap.delegate=self
        //tap.direction=UISwipeGestureRecognizerDirection.
        self.addGestureRecognizer(tap)
        
        sender.view.addSubview(self)
        
        self.menuLeftView=UIView(frame: CGRect(x: -self.menuWith, y: 0, width: self.menuWith, height: sender.view.frame.height))
        self.menuLeftView.backgroundColor=UIColor.whiteColor()
        self.hidden=true
        let leftswutch:UISwipeGestureRecognizer=UISwipeGestureRecognizer(target: self, action: "hide")
        //leftswutch.delegate=menuView
        leftswutch.direction=UISwipeGestureRecognizerDirection.Left
        self.menuLeftView.addGestureRecognizer(leftswutch)
        
        
        
        self.addSubview(self.menuLeftView)
     
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func show(){
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.hidden=false
            self.menuLeftView.hidden=false
            if((self.MenuSubView) != nil){
                self.MenuSubView!.hidden=false
            }
            self.menuLeftView.frame=CGRectMake(0, 0, self.menuWith, self.VC.view.frame.height)
            if((self.MenuSubView) != nil){
                self.MenuSubView!.frame = CGRectMake(0,0,self.menuWith,self.VC.view.frame.height);
            }
            
            self.backgroundColor=UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
            
            }) { (finished) -> Void in
                
        }
        
        
    }
    
    
    
    func hide(){
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            
            self.menuLeftView.frame=CGRectMake(-self.menuWith, 0, self.menuWith, self.VC.view.frame.height)
            self.backgroundColor=UIColor(red: 0, green: 0, blue: 0, alpha: 0)
            
            if((self.MenuSubView) != nil){
                self.MenuSubView!.frame = CGRectMake(-self.menuWith,0,self.menuWith,self.VC.view.frame.height);
            }
            
            
            }) { (finished) -> Void in
                self.hidden=true
                self.menuLeftView.hidden=true
                if((self.MenuSubView) != nil){
                    self.MenuSubView!.hidden=true
                }

                
        }
        
        
    }
    
    
    
    func switchMenu(){
        if self.hidden {
            show()
        }else{
            hide()
        }
        
        
    }
    
    
    func setContentView(contentView:UIView){
        let height=self.VC.view.frame.height
        contentView.frame = CGRectMake(-self.menuWith,0, self.menuWith,height);
        MenuSubView=contentView
        self.addSubview(contentView)
        
    }
    
    
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldReceiveTouch touch: UITouch) -> Bool {
        if(touch.view==self){
            return true
        }
        return false
    }
    
    
    
    
}
