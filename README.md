# WRSliderMemu

I am a beginner, I hope my code can give more inspiration for beginners. If you find that the code has bug, or want to communicate with me, please contact: 1505482941@qq.com

![image](https://raw.githubusercontent.com/TiltCitySong/WRSliderMemu/master/Explain/WRSliderMenu.gif)   

Step 1:
```swift  

    var sliderMenu:WRSliderMemu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         sliderMenu=WRSliderMemu(sender: self)
       
        // Do any additional setup after loading the view, typically from a nib.
    }
   
```
Step 2:
Where you need:
```swift  

 sliderMenu.switchMenu()
   
```
You can customize the view on the left.Only need：
```swift  

  
        let leftView=UIView(frame: CGRect(x: 0, y: 0, width: 100, height: UIScreen.mainScreen().bounds.height))
        leftView.backgroundColor=UIColor.greenColor()
        
        sliderMenu.setContentView(leftView)

   
```
![image](https://raw.githubusercontent.com/TiltCitySong/WRSliderMemu/master/Explain/WRSliderMenu2.gif)   


Thank you for checking my project.
