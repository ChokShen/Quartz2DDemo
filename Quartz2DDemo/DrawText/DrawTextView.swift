//
//  DrawTextView.swift
//  Quartz2DDemo
//
//  Created by forwor on 2020/3/20.
//  Copyright © 2020 forwor. All rights reserved.
//

import UIKit

class DrawTextView: UIView {
    
    
    override func draw(_ rect: CGRect) {
        //1.画文字
        let context = UIGraphicsGetCurrentContext()
        let rect1 = CGRect(x: 100, y: 120, width: 200, height: 200)
        context?.addRect(rect1)
        context?.setStrokeColor(UIColor.white.cgColor)
        context?.strokePath()
        let text: NSString = "我是一段测试文字搜集金额哦抛弃我金额全额我全额我去饿我去饿"
        text.draw(in: rect1, withAttributes: [NSAttributedString.Key.foregroundColor: UIColor.yellow, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20)])
        
        //2.画图片
        let rect2 = CGRect(x: 100, y: 350, width: 200, height: 200)
        context?.addRect(rect2)
        context?.setStrokeColor(UIColor.red.cgColor)
        context?.strokePath()
        let image1 = UIImage(named: "panda")
        image1?.draw(in: rect2)
        
        //3.剪切图片
        context?.addEllipse(in: CGRect(x: 100, y: 650, width: 200, height: 200))
        context?.clip()
        let image2 = UIImage(named: "panda")
        image2?.draw(at: CGPoint(x: 100, y: 650))
        
    }
    
}
