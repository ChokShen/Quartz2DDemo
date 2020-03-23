//
//  DrawShapeView.swift
//  Quartz2DDemo
//
//  Created by forwor on 2020/3/20.
//  Copyright © 2020 forwor. All rights reserved.
//

import UIKit

class DrawShapeView: UIView {

    //当view第一次显示到屏幕上时(被加到UIWindow上显示出来)
    //调用view的setNeedsDisplay或者setNeedsDisplayInRect:时
    override func draw(_ rect: CGRect) {
        //1.直线
        let context = UIGraphicsGetCurrentContext()
        context?.move(to: CGPoint(x: 100, y: 120))
        context?.addLine(to: CGPoint(x: 300, y: 120))
        context?.setStrokeColor(UIColor.yellow.cgColor)
        context?.setLineWidth(10)
        context?.setLineCap(CGLineCap.round)
        context?.strokePath()
        //保存图形上下文状态
        context?.saveGState()
    
        //2.三角形
        context?.move(to: CGPoint(x: 200, y: 180))
        context?.addLine(to: CGPoint(x: 100, y: 220))
        context?.addLine(to: CGPoint(x: 300, y: 260))
        context?.setStrokeColor(UIColor.red.cgColor)
        context?.setLineWidth(5)
        context?.closePath()
        context?.strokePath()
        
        //3.矩形
        context?.addRect(CGRect(x: 100, y: 320, width: 100, height: 100))
        context?.setFillColor(UIColor.cyan.cgColor)
        context?.fillPath()
        
        //4.圆形
        context?.addArc(center: CGPoint(x: 200, y: 550), radius: 80, startAngle: 0, endAngle: CGFloat(2 * Double.pi), clockwise: true)
        context?.setStrokeColor(UIColor.green.cgColor)
        context?.strokePath()
        
        //5.图形上下文栈
        //获取图形上下文状态
        context?.restoreGState()
        context?.move(to: CGPoint(x: 100, y: 650))
        context?.addLine(to: CGPoint(x: 300, y: 650))
        context?.strokePath()
        
    }
    

}
