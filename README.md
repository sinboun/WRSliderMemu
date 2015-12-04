# WRSliderMemu

I am a beginner, I hope my code can give more inspiration for beginners. If you find that the code has bug, or want to communicate with me, please contact: 1505482941@qq.com

![image](https://raw.githubusercontent.com/TiltCitySong/Wrslidermemu-Master/master/master/WRSliderMenu.gif )   

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

 sliderMenu.setContentView(contentView:UIView)
   
```


Thank you for checking my project.
