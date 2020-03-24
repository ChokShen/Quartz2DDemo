//
//  EditImageView.swift
//  Quartz2DDemo
//
//  Created by forwor on 2020/3/24.
//  Copyright © 2020 forwor. All rights reserved.
//

import UIKit

class EditImageView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        let originImage = UIImage(named: "panda")!
        print(UIScreen.main.scale)
        print(originImage.scale)
        print(originImage.size)
        //裁剪成圆形图片
        let imageWidth = originImage.size.width
        let imageHeight = originImage.size.height
        let diameter = min(imageWidth, imageHeight)
        UIGraphicsBeginImageContext(CGSize(width: diameter, height: diameter))
        let context = UIGraphicsGetCurrentContext()
        context?.addEllipse(in: CGRect(x: 0, y: 0, width: diameter, height: diameter))
        context?.clip()
        originImage.draw(in: CGRect(x: (diameter - imageWidth) / 2, y: (diameter - imageHeight) / 2, width: imageWidth, height: imageHeight))
        //获取已经裁剪过的图片
        let resultImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        let imageView = UIImageView(image: resultImage)
        imageView.frame = CGRect(x: 100, y: 300, width: 300, height: 300)
        self.addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
