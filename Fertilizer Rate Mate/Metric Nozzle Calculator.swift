//
//  Metric Nozzle Calculator.swift
//  Fertilizer Rate Mate
//
//  Created by josh gagnuss on 15/6/20.
//  Copyright © 2020 josh gagnuss. All rights reserved.
//

import UIKit

class Metric_Nozzle_Calculator: UIViewController {

    @IBOutlet weak var metricAppRate: UITextField!
    @IBOutlet weak var metricSpeed: UITextField!
    @IBOutlet weak var metricSpacing: UITextField!
    @IBOutlet weak var result: UILabel!
    var allTextFields: Array<UITextField>!
    
    
    
    //includes items to dismiss the keyboard
    override func viewDidLoad() {
        super.viewDidLoad()
       self.allTextFields = [self.metricAppRate, self.metricSpeed, self.metricSpacing]
    }
  // Creates Dismiss The Keyboard
 private func dismissKeyboard()
    {
        for textField in allTextFields
        {
            textField.resignFirstResponder()
        }
    }
// Initiates Dismmiss Function
    @IBAction func tapScreen(_ sender: Any) {
        dismissKeyboard()
      }
    
    // Main Formula Function
    @IBAction func Calculate(_ sender: Any) {
        
        let input1 = Double(metricAppRate.text!)!
        let input2 = Double(metricSpeed.text!)!
        let input3 = Double(metricSpacing.text!)!
        // Output presented as type double to allow for decimal points in nozzle output results
        let outPut = Double(input1 * input2 * input3 / 36000.00)
        result.text = String(format: "%.2F", (outPut))
    }
    
}
