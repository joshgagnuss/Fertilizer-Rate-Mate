//
//  Metric Liquid.swift
//  Fertilizer Rate Mate
//
//  Created by josh gagnuss on 16/6/20.
//  Copyright © 2020 josh gagnuss. All rights reserved.
//

import UIKit

class Metric_Liquid: UIViewController {

    //close keyboard item
       var allTextFields: Array<UITextField>!
    // Inputs
    @IBOutlet weak var requiredAmount: UITextField!
    @IBOutlet weak var nitrogenPercent: UITextField!
    @IBOutlet weak var phosphorusPercent: UITextField!
    @IBOutlet weak var potassiumPercent: UITextField!
    // Sqm Output
    @IBOutlet weak var nitrogenSqm: UILabel!
    @IBOutlet weak var phosphorusSqm: UILabel!
    @IBOutlet weak var potassiumSqm: UILabel!
    // Hectare Output
    @IBOutlet weak var nitrogenHectare: UILabel!
    @IBOutlet weak var phosphorusHectare: UILabel!
    @IBOutlet weak var potassiumHectare: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
 self.allTextFields = [self.requiredAmount, self.nitrogenPercent, self.phosphorusPercent, self.potassiumPercent]
    }
    
    // Creates Dismiss The Keyboard
         private func dismissKeyboard()
            {
                for textField in allTextFields
                {
                    textField.resignFirstResponder()
                }
            }
        // Initiates Dismmiss Keyboard Function
            @IBAction func tapScreen(_ sender: Any) {
                dismissKeyboard()
              }

    @IBAction func calculate(_ sender: Any) {
        // Creates Inputs
        let input1 = Double(requiredAmount.text!)!
        let input2 = Double(nitrogenPercent.text!)!
        let input3 = Double(phosphorusPercent.text!)!
        let input4 = Double(potassiumPercent.text!)!
        // Outputs Kg Per Hectare
        let output1 = Double((input1 * input2) / 100)
        let output2 = Double((input1 * input3) / 100)
        let output3 = Double((input1 * input4) / 100)
        // Outputs Kg Per Sqm
        let output4 = Double(output1 / 100)
        let output5 = Double(output2 / 100)
        let output6 = Double(output3 / 100)
        // Prints to Labels
        nitrogenHectare.text = String(format: "%.2F", (output1))
        phosphorusHectare.text = String(format: "%.2F", (output2))
        potassiumHectare.text = String(format: "%.2F", (output3))
        nitrogenSqm.text = String(format: "%.2F", (output4))
        phosphorusSqm.text = String(format: "%.2F", (output5))
        potassiumSqm.text = String(format: "%.2F", (output6))
    }
    
}
