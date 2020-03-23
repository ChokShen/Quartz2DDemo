//
//  TransformViewController.swift
//  Quartz2DDemo
//
//  Created by forwor on 2020/3/20.
//  Copyright © 2020 forwor. All rights reserved.
//

import UIKit

class TransformViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "矩阵操作"
        let customView = TransformView(frame: view.bounds)
        view.addSubview(customView)
        // Do any additional setup after loading the view.
    }
    

}
