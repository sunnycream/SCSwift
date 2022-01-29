//
//  SecondViewController.swift
//  SCSwift
//
//  Created by 刘林杰 on 2022/1/29.
//  Copyright © 2022 admin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.swiftLabel()
        self.swiftButton()
    }
    
    @objc func click(_ button: UIButton) {
        print("click")
        //如果没有设置title，则输出default value...
        //??: 空合运算符 Nil Coalescing Operator
        print(button.title(for: .normal) ?? "default value")
    }
    
    @objc func swiftLabel() {
        let label = UILabel(frame: CGRect(x: 20, y: 100, width: 350, height: 200))
        self.view.addSubview(label)

        label.text = "床前明月光，疑是地上霜。\n举头望明月，低头思故乡。"
//        label.font = UIFont(name: "Verdana-Bold", size: 20)
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.black
        label.numberOfLines = 2
        label.textAlignment = .center
//        label.shadowColor = UIColor.gray
//        label.shadowOffset = CGSize(width: 2, height: 2)
//        label.isHighlighted = true
//        label.highlightedTextColor = UIColor.yellow
        //文字大小自适应标签宽度
        label.adjustsFontSizeToFitWidth = true  //当文字超出标签宽度时，自动调整文字大小，使其不被截断
//        label.lineBreakMode = .byTruncatingMiddle
        
        /*
         //富文本设置
         let attributeString = NSMutableAttributedString(string: "😄劝君更尽一杯酒，西出阳关无故人。😄")
         //设置字体、字号
         attributeString.addAttribute(NSFontAttributeName, value: UIFont(name:"Verdana-Bold", size: 20)!, range: NSMakeRange(0, 6))
         //设置字体颜色
         attributeString.addAttribute(NSForegroundColorAttributeName, value: UIColor.yellow, range: NSMakeRange(0, 3))
         //设置背景颜色
         attributeString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.gray, range: NSMakeRange(3, 3))
         label.attributedText = attributeString
         */
    }
    
    @objc func swiftButton() {
        //        let button: UIButton = UIButton(type: .custom)
        //        button.frame = CGRect(x: 20, y: 500, width: 40, height: 40)
        //对于custom定制类型按钮，代码可简化为：
        let button = UIButton(frame: CGRect(x: 20, y: 500, width: 200, height: 80))
        
        button.backgroundColor = UIColor.yellow
        self.view.addSubview(button)
        
        button.setTitle("点击", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        
        button.setImage(UIImage(named:"wechat"), for: .normal)
        //        button.setImage(UIImage(named:"wechat"), for: .highlighted)
        //高亮状态下图片不会变暗
        button.adjustsImageWhenHighlighted = false
        
        button.addTarget(self, action: #selector(click(_:)), for: .touchUpInside)
    }
    
    
//    lazy var button: UIButton = {
//        let tempButton = UIButton()
//        tempButton.setTitle("点击", for: .normal)
//        tempButton.setTitleColor(UIColor.black, for: .normal)
//        return tempButton
//    }()
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
