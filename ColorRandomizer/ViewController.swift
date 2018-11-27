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
        let r = CGFloat(Float.random(in: 0.0..<1.0))
        let g = CGFloat(Float.random(in: 0.0..<1.0))
        let b = CGFloat(Float.random(in: 0.0..<1.0))
        let normalColor = UIColor.init(red: r, green: g, blue: b, alpha: 1.0)
        let compColor = getCompColor(color: normalColor)
        background.backgroundColor = normalColor
        randomButton.backgroundColor = compColor
        print("Normal Color: ", normalColor)
        print("Comp Color: ", compColor)
        randomButton.setTitleColor(normalColor, for: [])
    }
    
    @IBOutlet weak var background: UIView!
    @IBOutlet weak var randomButton: UIButton!
    
    func getCompColor(color: UIColor) -> UIColor {
        let r = 1.0 - CIColor(color: color).red
        let g = 1.0 - CIColor(color: color).green
        let b = 1.0 - CIColor(color: color).blue
        return UIColor.init(red: r, green: g, blue: b, alpha: 1.0)
    }
}

