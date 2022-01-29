//
//  ViewController.swift
//  SCSwift
//
//  Created by admin on 2019/4/29.
//  Copyright © 2019 admin. All rights reserved.
//

enum SCWeek {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday
}

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        //一行有画多条语句时，必须用";"隔开
        let text = "Hello, world!"; print(text)

        //标记
        print("test")

        //注释

        /*************
         *我能嵌套多行注释

            /*
            第一行注释
            第二行注释
            第三行注释
            */

         *我能嵌套多行注释
         *************/

//        let a = 1 + 2
//        let b = 2+1

        print("LLJ")

        //闭区间运算符 0~10
        for x in 0...10 {
//            print(x)
//            print("\(x) ")
//            print(x, terminator: "")
//            print("\(x) ", terminator: "")
            print("x------------\(x)")
        }

        //半开区间运算符 0~9
        for y in 0..<10 {
            print("y------------\(y)")
        }

        //接收用户输入，怎么用
//        let theInput = readLine()
//        print(theInput)

        //类型别名
        typealias LLJNum = Int
        let num: LLJNum = 7
        print("\nnum = \(num)")

        //类型安全，在编译时检查代码
//        var varA = 33
//        varA = "String"//cannot assign value of type 'String' to type 'Int'
//        print(varA)

        //类型推断
        let varA = 22
        print(varA)

        let varB = 3.14
        print(varB)

        let varC = 3 + 0.14
        print(varC)

        //可选类型 Optionals
        let string: String? = "You see what I mean?"
        if string != nil {
            //强制解析 ! forced unwrapping
            //使用操作符 ! 去获取值为nil的可选变量运行时会报错
            print(string!)
        } else {
            print("string is nil~")
        }

        //自动解析
        //在声明可选变量时用"!"替换"?"，在使用可选变量时不需要使用"!"来获取值，它会自动解析
        let string2: String! = "You see what I mean? 2"
        if string2 != nil {
            print(string2) //Optional("You see what I mean? 2")
        } else {
            print("string is nil~")
        }

        //可选绑定
        let string3:String? = "You see what I mean? 3"
        if let yourString = string3 {
            print("你的字符串值为 - \(yourString)")
        } else {
            print("你的字符串没有值")
        }

        //类型标注 ": + spacing +类型"
        let sum: Int = 6
        print(sum)


//        let isReal = true
//        if isReal  {
//            print("true----------")
//        } else {
//            print("false----------")
//        }

        //?: 替代 if...else语句
        //a ? b : c
        
        
        /**********************
         1. 常量和变量
         ***********************/

        //声明常量
        let maximumNumberOfLoginAttempts = 10

        //声明变量
        var currentLoginAttempt = 0

        //在一行中声明多个常量或变量
        let x = 1, y = 2, z = 3
        var sum1 = 0, sum2 = 0

        //⚠️在你的代码中，如果存储的值不会改变，请⽤ let 关键字将之声明为一个常量。只有储存会改 变的值时才使⽤变量。

        /**********************
         2. 类型标注
         ***********************/

        //在变量或常量的名字后边加一个冒号，再跟一个空格，最后加上要使用的类型名称。
        var welcomeMessage: NSString
        welcomeMessage = "Hello"

        //在一行中定义多个相关的变量为相同的类型，用逗号分隔，只要在最后的变量名字后边加上类型标注。
        var red, green, blue: Double

        /**********************
         3. 命名常量和变量
         ***********************/

        //常量和变量的名字几乎可以使用任何字符，甚至包括 Unicode 字符：
        let π = 3.14159
        let 你好 = "你好世界"
        let 😄 = "smile"

        //⚠️如果你需要使用 Swift 保留的关键字来给常量或变量命名，可以使用反引号（ ` ）包围它来作为名称。总之，除非别无选择，避免使用关键字作为名字除非你确实别无选择。
        var friendlyWelcome = "Hello"
        friendlyWelcome = "Hi"

        //输出常量或变量
        print("the current friendlyWelcome is \(friendlyWelcome)")

        /* 注释1
        /* 注释2 */
        注释1   */

        //整数
        //整数就是没有小数部分的数字，比如 42 和 -23 。整数可以是有符号（正，零或者负），或者无符号（正数或零）。

        //整数范围
        let minValue = UInt8.min
        let maxValue = UInt8.max
        print("minValue is \(minValue)")
        print("maxValue is \(maxValue)")

        //除非你需操作特定长度的整数，否则请尽量在代码中使用 Int 作为你的整数的值类型。

        //Swift 也提供了一种无符号的整数类型， UInt ，它和当前平台的原生字长度相同。
        //⚠️只在的确需要存储一个和当前平台原生字长度相同的无符号整数的时候才使用 UInt 。其他情况下，推荐使用 Int ，即使已经知道存储的值都是非负的。如同类型安全和类型推断中描述的那样，统一使用 Int  会提高代码的兼容性，同时可以避免不同数字类型之间的转换问题，也符合整数的类型推断。

        //浮点数
        //⚠️Double 有至少 15 位数字的精度，而 Float 的精度只有 6 位。具体使用哪种浮点类型取决于你代码需要处理的值范围。在两种类型都可以的情况下，推荐使用 Double 类型。


        //类型安全和类型推断
        //因为 Swift 是类型安全的，他在编译代码的时候会进行类型检查，任何不匹配的类型都会被标记为错误。这会帮助你在开发阶段更早的发现并修复错误。
        //如果你没有为所需要的值进行类型声明，Swift 会使用类型推断的功能推断出合适的类型。通过检查你给变量赋的值，类型推断能够在编译阶段自动的推断出值的类型。

        //因为有了类型推断，Swift 和 C 以及 Objective-C 相比，只需要少量的类型声明。其实常量和变量仍然需要明确的类型，但是大部分的声明工作 Swift 会帮你做。
        //Swift 在推断浮点值的时候始终会选择 Double （而不是 Float ）。

        //2018.5.9
        //整数转换
        let a: UInt16 = 2_000
        let b: UInt8 = 1
        let sum3 = a + UInt16(b)
        print("sum3 = \(sum3)")
        //怎么输出一个数的类型？？？

        //整数和浮点数转换
        //整数和浮点数类型的转换必须显式地指定类型：
        let three = 3
        let other = 0.1415926
        let pi = Double(three) + other
        print("pi = \(pi)")

        let intPI = Int(pi)
        print("intPI = \(intPI)")

        //类型别名
        typealias Liu = String

        //布尔值
        //swift: true  false
        //OC:    0     1
        let sleep = true
        let eat = false

        if (sleep) {
            print("sleep")
        } else {
            print("eat")
        }

        //2018.5.10
        //元组把多个值合并成单一的复合型的值。元组内的值可以是任何类型，而且可以不必是同一类型。
        let http404Error = (404, "Not Found")

        //你也可以将一个元组的内容分解成单独的常量或变量，这样你就可以正常的使用它们了：
        let (code, message) = http404Error
        print("the code is \(code)")
        print("the message is \(message)")

        //当你分解元组的时候，如果只需要使用其中的一部分数据，不需要的数据可以用下滑线（ _ ）代替：
        let (justTheCode, _) = http404Error
        print("the justTheCode is \(justTheCode)")

        //另外一种方法就是利用从零开始的索引数字访问元组中的单独元素：
        print("http404Error.0 is \(http404Error.0)")
        print("http404Error.1 is \(http404Error.1)")

        //你可以在定义元组的时候给其中的单个元素命名：
        let http200Status = (statusCode: 200, description: "OK")
        print("the statusCode is \(http200Status.statusCode)")
        print("the description is \(http200Status.description)")


        /**********************
                可选项
         ***********************/

        let possibleNumber = "5"
        let number = Int(possibleNumber)
        print("the number is \(number))")

        //你可以通过给可选变量赋值一个 nil 来将之设置为没有值：
        var responseCode:Int? = 404
        responseCode = nil
        print("the responseCode is \(responseCode)")

        //如果你定义的可选变量没有提供一个默认值，变量会被自动设置成 nil 。
        var someMessage: String?
        print("the someMessage is \(someMessage)")

        //If 语句以及强制展开
        //一旦你确定可选中包含值，你可以在可选的名字后面加一个感叹号 （ ! ） 来获取值，感叹号的意思就是说“我知道这个可选项里边有值，展开吧。”这就是所谓的可选值的强制展开。
        if number != nil {
            print("the number has an integer value is \(number!)")
        }

        //可选项绑定
        if let currentNumber = Int(possibleNumber) {
            //已被可选内部的值进行了初始化，所以这时就没有必要用 ! 后缀来获取里边的值。
            print("the currentNumber is \(currentNumber)")
        } else {
            print("\(possibleNumber) could not be converted an integer")
        }

        //可以在同一个 if 语句中包含多可选项绑定，用逗号分隔即可
        if let firstNumber = Int("3"), let secondNumber = Int("9"), firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < \(100)")
        }

        if let firstNumber1 = Int("30") {
            if let secondNumber1 = Int("90") {
                if firstNumber1 < secondNumber1 && secondNumber1 < 100 {
                    print("\(firstNumber1) < \(secondNumber1) < \(100)")
                }
            }
        }

        //隐式展开可选项主要被用在 Swift 类的初始化过程中。
        let possibleString: String? = "QQ"
        let forcedString: String = possibleString!
        print("the forcedString is \(forcedString)")

        let assumedString: String! = "WeChat"
        let implicitString = assumedString
        print("the implicitString is \(implicitString)")

        if assumedString != nil {
            print("the assumedString is \(assumedString)")
        }

        if let cuttentString = assumedString {
            print("the cuttentString is \(cuttentString)")
        }

        //2018.5.11
        //错误处理
        func canThrowAnError() throws {
            //This function may or may not throw an error
        }

        //通过在函数声明过程当中加入 throws 关键字来表明这个函数会抛出一个错误。当你调用了一个可以抛出错误的函数时，需要在表达式前预置 try 关键字。
        //Swift 会自动将错误传递到它们的生效范围之外，直到它们被 catch 分句处理。
        //do 语句创建了一个新的容器范围，可以让错误被传递到到不止一个的 catch 分句里。
        do {
            try canThrowAnError()
            //no error was thrown
        } catch {
            //an erroe was thrown
        }

        //断言
        //let age = -3
        //assert(age >= 0, "A person's age cannot be less than zero")
        // this causes the assertion to trigger, because age is not >= 0

        //let age = -3
        //assert(age >= 0)
        //
        //if age > 10 {
        //    print("age > 10")
        //} else if age > 0 {
        //    print(age > 0)
        //} else {
        //    assertionFailure("A person's age cannot be less than zero")
        //}

        //强制先决条件
        let index = 7

        precondition(index > 0, "Yes, index > 0")

        //2018.5.14
        var (xx, yy) = (10, 20)
        print("xx = \(xx)")//10
        print("yy = \(yy)")//20

        //if xx = yy {
        //    //不合法
        //}

        //加法运算符同时也支持 String 的拼接：
        let firstName = "Lynn "
        let lastName = "Liu"
        let myName = firstName + lastName
        print("my name is \(myName)")

        //合并空值运算符 a ?? b
        //如果 a  的值是非空的， b  的值将不会被考虑。这就是所谓的 短路计算 。
        let colorName = "red"
        //let userColorName: String?
        let userColorName = "green"

        let colcorNameToUse = userColorName ?? colorName
        print("colcorNameToUse is \(colcorNameToUse)")

        //2018.5.15
        //Swift严格要求变量在使用之前必须进行初始化
        let number1: Int = 2
        let number2 = number1 + 10
        print("number2 = \(number2)")
    }
    
    func swiftLabel() {
        let label = UILabel(frame: CGRect(x: 20, y: 100, width: 100, height: 100))
        self.view.addSubview(label)
        
        label.text = "好好挣钱"
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.red
        label.backgroundColor = UIColor.black
    }
    
    func swiftButton() {
        let button = UIButton(frame: CGRect(x: 20, y: 500, width: 100, height: 50))
        self.view.addSubview(button)
        
        button.setTitle("UIBUTTON", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.addTarget(self, action: #selector(myButtonAction), for: .touchUpInside)
    }
    
    @objc func myButtonAction() {
        print("----------1")
    }
    
    
    /*
   
     //区别：
     Swift 字符串 不需要 艾特@，只需要 双引号""
     button点击事件
     
     */
    
    
    //
    
//    var w: SCWeek = .Monday
    var week = SCWeek.Monday
//    week = .Sunday
    

//    switch week {
//    case .Monday:
//        print("Monday")
//    case .Tuesday:
//        print("Tuesday")
//    case .Wednesday:
//        print("Wednesday")
//    case .Thursday:
//        print("Thursday")
//    case .Friday:
//        print("Friday")
//    case .Saturday:
//        print("Saturday")
//    case .Sunday:
//        print("Sunday")
//    }
//    print(week)
    
            
//    self.swiftString()
//    self.swiftArray()
//    self.swiftDictionary()
//    self.swiftClosures()

            
//    let myString = "Hello World!"
//    print(myString)
//
//    let yourString = "Hello!"
//    print(yourString)
//    print("my string is \'\(myString)\' and your string is \'\(yourString)\'")
//
//
//    let 😄 = "smile"
//    print(😄)
//
//    let x = 1, y = 2, z = 3
//    print(x, y, z)
//
//    //类型标注
//    //冒号和空格
//    var info: NSString
//    info = "info"
//    print(info)
//
//    let conA: CGFloat = 2.6
//    print(conA)
//
//    let a, b, c: NSInteger
//    a = 2
//    b = 3
//    c = 4
//    print(a, b, c)
//
//    let sum = 1 + 2
//    print(sum)
//
//    for i in 0...10 {
//        print("\(i)", terminator: " ")
////            print(i)
//    }
//    print()
//
//    //接收用户输入
////        let theInput = readLine()
//
//    //类型别名
//    typealias ff = Float
//    let source: ff = 99.0
//    print(source)
//
//    //可选类型
//    let string: String? = nil
//    if string != nil {
//        print(string)
//    } else {
//        print("string is nil")
//    }
//
//    //强制解析 forced unwrapping
//    //当你确定可选类型确实包含值之后，你可以在可选的名字后面加一个感叹号（!）来获取值。
//    //这个感叹号表示"我知道这个可选有值，请使用它。"
//    let string1: NSString?
//    string1 = "hi, this is string1"
//    if string1 != nil {
////            print(string1)//Optional(hi, this is string1)
//        print(string1!)//hi, this is string1
//    } else {
//        print("string1 is nil")
//    }
//
//    //自动解析
//    //在声明可选变量时使用感叹号（!）替换问号（?）
//    //这样可选变量在使用时就不需要再加一个感叹号（!）来获取值，它会自动解析。
//    let string2: NSString!
//    string2 = "hi, this is string2"
//    if string2 != nil {
//        print(string2)//hi, this is string2
//    } else {
//        print("string2 is nil")
//    }
//
//    //使用可选绑定（optional binding）来判断可选类型是否包含值
//    let string3: NSString?
//    string3 = "hi, this is string3"
//    if let string4 = string3 {
//        print(string4)//hi, this is string3
//    } else {
//        print("string3 is nil")
//    }
            

            

            //swift3 中已经取消了++、--
    //        var a = 10
    //        var b = 20
    //
    //        a += 1 //a = a + 1, 类似a++
    //        b -= 1 //b = b - 1, 类似b--
    //        print("\(a)")
    //        print("\(b)")
            
            /*
            //闭区间运算符
            //1...5 区间值为 1, 2, 3, 4 和 5
            for index in 1...5 {
                print("\(index) * 5 = \(index * 5)")
            }
            
            //半开区间运算符
            //1..<5 区间值为 1, 2, 3 和  4
            for index2 in 1..<5 {
                print("\(index2) * 5 = \(index2 * 5)")
            }
             */
    
    
    //-------------
    // MARK: 字符串
    //-------------
    @objc func swiftString() {
         let string = "Hello, Monday~"
         print(string)
         
         let str = String()
         if str.isEmpty {
         print("yes, it is empty")
         } else {
         print("is not empty")
         }
         
         var stringA = "Hello->"
         stringA += "Mondy"
         print(stringA)
         
         let strA = "strA~"
         let strB = "strB~"
         let result = strA + strB
         print("拼接字符串 = \(result)")
         print("字符串长度 = \(strB.characters.count)")
         
         //比较字符串
         if strA == strB {
            print("strA == strB")
         } else {
            print("strA != strB")
         }
    }
    
    //-------------
    // MARK: 数组
    //-------------
    @objc func swiftArray() {
        
//        let array: NSArray = [0, 1 ,2]
//        print("array: \(array)")
        
        var array1 = [Int]()
//        array1 = [11, 12 ,55]
        
        //添加元素
        array1.append(20)
        array1.append(78)
        array1 += [65]
        
        //修改元素
        array1[0] = 20000
        
        print("array1: \(array1)")
        print("array1[0]: \(array1[0])")
        print("array1[1]: \(array1[1])")
        print("array1[2]: \(array1[2])")
        
        //遍历数组
        for items in array1 {
            print("items: \(items)")
        }
        for (index, items) in array1.enumerated() {
            print("index[\(index)] =  \(items)")
        }
        
        let array2 = [Int](repeatElement(0, count: 3))
//        array2 = [54, 5, 263, 78, 54] //why?
        print("array2: \(array2)")
        
        let array3: [Int] = [15, 85 ,66]
        print("array3: \(array3)")
        
        //合并数组
        let array4 = array1 + array3
        print("array4: \(array4)")
        
        print("array4是否为空：\(array4.isEmpty)")
    }

    //-------------
    // MARK: 字典
    //-------------
    @objc func swiftDictionary() {
        
        var dict1 = [Int: String]()
        dict1 = [1:"one", 2:"two", 3:"three", 4:"four", 5:"five"]
        print("dict1: \(dict1)")
        
        //通过key获得元素
        let num1 = dict1[1]
        print("dict[1]: \(String(describing: num1!))")
        
        //修改元素 updateValue()
        let oldValue1 = dict1.updateValue("First", forKey: 1)
        print("dict1 update1: \(dict1)")
        print("oldValue1: \(String(describing: oldValue1!))")
        print("newValue1: \(String(describing: dict1[1]!))")
        
        //修改元素 key
        let oldValue2 = dict1[2]
        dict1[2] = "Second"
        let newValue2 = dict1[2]
        print("dict1 update2: \(dict1)")
        print("oldValue2: \(String(describing: oldValue2!))")
        print("newValue2: \(String(describing: newValue2!))")
        
        //删除元素 removeValue()
        let removeValue = dict1.removeValue(forKey: 4)
        print("dict1 remove2: \(dict1)")
        print("nremoveValue: \(String(describing: removeValue!))")
        
        //removeValue key
        dict1[5] = nil
        print("dict1 remove2: \(dict1)")
        
        let dict2: [String: String] = ["apple":"APPLE", "pear":"PEAR", "banana":"BANANA"]
        print("dict2: \(dict2)")
        
        //遍历字典
        for (key, value) in dict2 {
             print("key: \(key) = value: \(value)")
        }
        
        for (key, value) in dict2.enumerated() {
            print(key,value)
        }
        
        //字典转数组
        let dict2Keys = [String](dict2.keys)
        let dict2Values = [String](dict2.values)
//        print(dict2Keys)
//        print(dict2Values)
        
        for key in dict2Keys {
            print("key: \(key)")
        }
        for value in dict2Values {
            print("value: \(value)")
        }
        
        print("dict2.count: \(dict2.count)")
        print("dict2是否为空: \(dict2.isEmpty)")
        
        
        //?
        let str = dict2["apple"]
        print("--------- \(str ?? "defaule value")")
    }
    
    //-------------
    // MARK: 闭包
    //-------------
    //闭包与Objc中的block相似
    @objc func swiftClosures() {
        let name = {print("swift closures")}
        name()
        
        let divide = {(a: Int, b: Int) -> Int in
            return a / b
        }
        let result = divide(100, 5)
        print(result)
        
        //闭包表达式
        let array = ["A", "B", "C", "D", "E", "F"]
//        func backwards(str1: String, str2: String) -> Bool {
//            return str1 > str2
//        }
//        let reversed1 = array.sorted(by: backwards)
//        print(reversed1)
        
        //参数名称缩写
        //$0和$1表示闭包中第一个和第二个String类型的参数
//        let reversed2 = array.sorted(by: {$0 > $1})
//        print(reversed2)
        
        //运算符函数
//        let reversed3 = array.sorted(by: >)
//        print(reversed3)

        //sorted() 后的 {$0 > $1} 为尾随闭包
//        let reversed4 = array.sorted() {$0 > $1}
//        print(reversed4)
        
        //如果函数只需要闭包表达式一个参数，当使用尾随闭包时，可以把()省略掉
        let reversed5 = array.sorted {$0 > $1}
        print(reversed5)
        
        //捕获值
        
        //闭包是引用类型

        
        
    }
    
    
        
}

