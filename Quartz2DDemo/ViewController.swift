//
//  ViewController.swift
//  Quartz2DDemo
//
//  Created by forwor on 2020/3/20.
//  Copyright © 2020 forwor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func drawShape(_ sender: Any) {
        self.navigationController?.pushViewController(DrawShapeViewController(), animated: true)
    }
    
    @IBAction func drawText(_ sender: Any) {
        self.navigationController?.pushViewController(DrawTextViewController(), animated: true)
    }
    
    @IBAction func transform(_ sender: Any) {
        self.navigationController?.pushViewController(TransformViewController(), animated: true)
    }
    
    
    @IBAction func drawImage(_ sender: Any) {
        self.navigationController?.pushViewController(DrawImageViewController(), animated: true)
    }
    
    @IBAction func editImage(_ sender: Any) {
        self.navigationController?.pushViewController(EditImageViewController(), animated: true)
    }
}

