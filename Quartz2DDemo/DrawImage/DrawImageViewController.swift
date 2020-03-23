//
//  DrawImageViewController.swift
//  Quartz2DDemo
//
//  Created by forwor on 2020/3/20.
//  Copyright © 2020 forwor. All rights reserved.
//

import UIKit

class DrawImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "画图片"
        view.backgroundColor = UIColor.white
        let customView = DrawImageView(frame: view.bounds)
        view.addSubview(customView)
    }

}
