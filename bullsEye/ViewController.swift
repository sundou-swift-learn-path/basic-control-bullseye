//
//  ViewController.swift
//  bullsEye
//
//  Created by sundou on 2019/1/7.
//  Copyright © 2019 sundou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    var currentValue: Int = 0
    var targetValue: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = Int(slider.value)
        self.newRound()
    }

    @IBAction func showAlert() {
        let message = "The value of the slider is now: \(currentValue)" +
        "\n The target value is: \(targetValue)"
        let alert = UIAlertController(title: "Hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Tap", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMove(_ slider: UISlider) {
        let roundValue = slider.value.rounded()
        print("slider move value \(roundValue)")
        
        currentValue = Int(roundValue)
    
    }
    
    func newRound() {
        targetValue = Int.random(in: 1...100)
        slider.value = 50
    }
}

