//
//  ViewController.swift
//  closerApp
//
//  Created by Shun-Ching, Chou on 2019/3/22.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliderModeSegmentedControl: UISegmentedControl!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sliderModeSegmentedControl.selectedSegmentIndex = 0
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let ratio = CGFloat(sender.value/12)
        // 距離越遠越透明
        leftImageView.alpha = ratio
        rightImageView.alpha = ratio
        
        let speed = sender.value * 20.0
        let index = sliderModeSegmentedControl.selectedSegmentIndex
        switch index {
        case 0: // 等速水平移動
            leftImageView.frame.origin.x = CGFloat(65 + speed)
            rightImageView.frame.origin.x = CGFloat(605 - speed)
        case 1:// 變速水平移動
            leftImageView.frame.origin.x = CGFloat(65 + speed * 0.5)
            rightImageView.frame.origin.x = CGFloat(605 - speed * 1.5)
            
        default:
            return
        }
    }
}

