//
//  ViewController.swift
//  closerApp
//
//  Created by Shun-Ching, Chou on 2019/3/22.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        leftImageView.frame.origin.x = CGFloat(65+sender.value*20)
        rightImageView.frame.origin.x = CGFloat(605-sender.value*20)
    }
    
}

