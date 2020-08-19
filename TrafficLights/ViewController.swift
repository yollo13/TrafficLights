//
//  ViewController.swift
//  TrafficLights
//
//  Created by YolloArts on 19.08.2020.
//  Copyright © 2020 YolloArts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var changeColorButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = 75
        yellowLightView.layer.cornerRadius = 75
        greenLightView.layer.cornerRadius = 75
        
        changeColorButton.layer.cornerRadius = 10
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func changeColorButtonTap() {
        
        
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 && greenLightView.alpha != 1  {
            redLightView.alpha = 1
            changeColorButton.setTitle("NEXT", for: .normal)
        } else if redLightView.alpha == 1 {
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
        } else if yellowLightView.alpha == 1 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
        } else if greenLightView.alpha == 1 {
            greenLightView.alpha = 0.3
            redLightView.alpha = 1
        }
    }
    
}

