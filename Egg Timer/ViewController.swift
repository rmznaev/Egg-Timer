//
//  ViewController.swift
//  Egg Timer
//
//  Created by Ramazan Abdullayev on 1/13/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var time = 210
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var responseLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
    }
    
    @IBAction func play(_ sender: UIBarButtonItem) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector:
            #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(_ sender: UIBarButtonItem) {
        
        timer.invalidate()
        
    }
    
    @IBAction func minusTen(_ sender: UIBarButtonItem) {
        
        if time > 10 {
            
            time -= 10
            
            timerLabel.text = String(time)
            
        }
        
    }
    
    @IBAction func plusTen(_ sender: UIBarButtonItem) {
        
        time += 10
        
        timerLabel.text = String(time)
        
    }
    
    @IBAction func reset(_ sender: UIBarButtonItem) {
        
        time = 210
        
        timerLabel.text = String(time)
        
    }
    
    @objc func decreaseTimer() {
        
        if time > 0 {
            
            time -= 1
            
            timerLabel.text = String(time)
            
        } else {
            
            responseLabel.text = "Your egg boiled!"
            
            timer.invalidate()
            
        }
        
    }
    
}
