//
//  EditImageViewController.swift
//  Quartz2DDemo
//
//  Created by forwor on 2020/3/24.
//  Copyright © 2020 forwor. All rights reserved.
//

import UIKit

class EditImageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "裁剪图片"
        view.backgroundColor = UIColor.cyan
        let customView = EditImageView(frame: view.bounds)
        view.addSubview(customView)
        // Do any additional setup after loading the view.
    }

}
