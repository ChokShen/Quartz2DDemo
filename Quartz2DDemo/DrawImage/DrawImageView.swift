//
//  DrawImageView.swift
//  Quartz2DDemo
//
//  Created by forwor on 2020/3/20.
//  Copyright © 2020 forwor. All rights reserved.
//

import UIKit

class DrawImageView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //绘制一张图片
        //创建bitmap图形上下文
        UIGraphicsBeginImageContext(CGSize(width: 200, height: 200))
        let context = UIGraphicsGetCurrentContext()
        context?.addEllipse(in: CGRect(x: 0, y: 0, width: 200, height: 200))
        context?.setFillColor(UIColor.red.cgColor)
        context?.fillPath()
        //从bitmap图形上下文获取图片
        let image = UIGraphicsGetImageFromCurrentImageContext()
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: 100, y: 300, width: 300, height: 300)
        self.addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
