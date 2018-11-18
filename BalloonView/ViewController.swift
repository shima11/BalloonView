//
//  ViewController.swift
//  BalloonView
//
//  Created by Jinsei Shima on 2018/11/18.
//  Copyright © 2018 Jinsei Shima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let balloonView = BalloonView()
        balloonView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        balloonView.center = view.center
        view.addSubview(balloonView)
    }


}

