//
//  ViewController.swift
//  ColorRandomizer
//
//  Created by Michael Vytlingam on 2018-11-26.
//  Copyright © 2018 Michael Vytlingam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        randomButton.layer.cornerRadius = 7
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func randomize(_ sender: UIButton) {
        let h = CGFloat(Float.random(in: 0.0..<1.0))
//        let s = CGFloat(Float.random(in: 0.0..<1.0))
//        let v = CGFloat(Float.random(in: 0.0..<1.0))
        let normalColor = UIColor.init(hue: h, saturation: 1.0, brightness: 1.0, alpha: 1.0)
        let compColor = UIColor.init(hue: abs(h - 0.5), saturation: 1.0, brightness: 1.0, alpha: 1.0)
        background.backgroundColor = normalColor
        randomButton.backgroundColor = compColor
        randomButton.setTitleColor(normalColor, for: [])
    }
    
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var randomButton: UIButton!
}

