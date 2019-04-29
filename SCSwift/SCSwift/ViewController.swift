//
//  ViewController.swift
//  SCSwift
//
//  Created by admin on 2019/4/29.
//  Copyright © 2019 admin. All rights reserved.
//

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
    }
}

