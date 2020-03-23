//
//  TransformView.swift
//  Quartz2DDemo
//
//  Created by forwor on 2020/3/20.
//  Copyright © 2020 forwor. All rights reserved.
//

import UIKit

class TransformView: UIView {

    override func draw(_ rect: CGRect) {
        //旋转
        //设置矩阵操作必须要在添加图形之前，如果设置在添加图形之后的话，此时它已经画完了，无效
        let context = UIGraphicsGetCurrentContext()
        //旋转整个layer
        context?.rotate(by: CGFloat(Double.pi / 4))
        context?.addRect(CGRect(x: 400, y: 200, width: 100, height: 100))
        context?.setStrokeColor(UIColor.yellow.cgColor)
        context?.strokePath()
    }

}
