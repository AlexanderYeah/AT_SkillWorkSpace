简单风格的Toaster

>  Toaster



```swift
//1  弹出文本 "Hello World"  延迟时间 2  展示时间 1
Toast(text: "Hello World", delay: 2, duration: 1).show();

//2 初始化toast 方法
let toast = Toast(text: "你好世界");
toast.show();
toast.cancel();

// 3 设置吐司的样式
// textInsets  cornerRadius  等等 可以自行设置
ToastView.appearance().backgroundColor = UIColor.cyan;

ToastView.appearance().textColor = .red;

ToastView.appearance().font = UIFont.systemFont(ofSize: 25);

// 距离屏幕下面的距离
ToastView.appearance().bottomOffsetPortrait = 300;
        
```

