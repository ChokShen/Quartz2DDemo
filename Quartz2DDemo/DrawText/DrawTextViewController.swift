//
//  DrawTextViewController.swift
//  Quartz2DDemo
//
//  Created by forwor on 2020/3/20.
//  Copyright © 2020 forwor. All rights reserved.
//

import UIKit

class DrawTextViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "画文字"
        let customView = DrawTextView(frame: view.bounds)
        view.addSubview(customView)
        // Do any additional setup after loading the view.
    }

}
