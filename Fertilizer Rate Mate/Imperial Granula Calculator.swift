//
//  Imperial Granula Calculator.swift
//  Fertilizer Rate Mate
//
//  Created by josh gagnuss on 16/6/20.
//  Copyright © 2020 josh gagnuss. All rights reserved.
//

import UIKit

class Imperial_Granula_Calculator: UIViewController {
    
    // Keyboard Variable
    var allTextFields: Array<UITextField>!
    
    // Inputs
    @IBOutlet weak var requiredAmount: UITextField!
    @IBOutlet weak var nitrogenPercent: UITextField!
    @IBOutlet weak var phosphorusPercent: UITextField!
    @IBOutlet weak var potassiumPercent: UITextField!
    
    
    // Pounds per 1,000 sqft output
    @IBOutlet weak var nitrogenFeet: UILabel!
    @IBOutlet weak var phosphorusFeet: UILabel!
    @IBOutlet weak var potassiumFeet: UILabel!
    
    // Pounds per Acre output
    @IBOutlet weak var nitrogenAcre: UILabel!
    @IBOutlet weak var phosphorusAcre: UILabel!
    @IBOutlet weak var potassiumAcre: UILabel!
    
    

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

    // Main Formula 
    @IBAction func calculate(_ sender: Any) {
        // Creates Inputs
        let input1 = Double(requiredAmount.text!)!
        let input2 = Double(nitrogenPercent.text!)!
        let input3 = Double(phosphorusPercent.text!)!
        let input4 = Double(potassiumPercent.text!)!
        // Creates per sqft output
        let output1 = Double(input1 / (input2 / 100))
        let output2 = Double(input1 / (input3 / 100))
        let output3 = Double(input1 / (input4 / 100))
        // creates Acre ouput
        let output4 = Double(output1 * 43.56)
        let output5 = Double(output2 * 43.56)
        let output6 = Double(output3 * 43.56)
        // Prints Labels
        nitrogenFeet.text = String(format: "%.2F", (output1))
        phosphorusFeet.text = String(format: "%.2F", (output2))
        potassiumFeet.text = String(format: "%.2F", (output3))
        nitrogenAcre.text = String(format: "%.2F", (output4))
        phosphorusAcre.text = String(format: "%.2F", (output5))
        potassiumAcre.text = String(format: "%.2F", (output6))
        
        
    }
    
    
    
    
    
    
    
    

}
