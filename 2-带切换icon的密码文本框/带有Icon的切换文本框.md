使用 PasswordTextField 框架

> PasswordTextField



编辑密码的时候 密码的显示与隐藏



```swift
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

```

