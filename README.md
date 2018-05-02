# NewGesture
在Swfit中使用UIGesture的优雅方法. 参考自没故事的卓同学.

```
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
```
