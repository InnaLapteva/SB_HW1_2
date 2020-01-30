//
//  ViewController.swift
//  SB_HW1_2
//
//  Created by Manager on 29/01/2020.
//  Copyright © 2020 Inna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 20
        redView.layer.cornerRadius = 70
        redView.alpha = 0.3
        yellowView.layer.cornerRadius = 70
        yellowView.alpha = 0.3
        greenView.layer.cornerRadius = 70
        greenView.alpha = 0.3
        
    }
    
    @IBAction func startButtonPressed() {
       
        if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        } else if redView.alpha == 1 && yellowView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 0.3
            yellowView.alpha = 1
        } else if redView.alpha != 1 && yellowView.alpha == 1 && greenView.alpha != 1 {
            yellowView.alpha = 0.3
            greenView.alpha = 1
        } else if redView.alpha != 1 && yellowView.alpha != 1 && greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
        
        }
        
    }
    



