//
//  Imperial Liquid Calculator.swift
//  Fertilizer Rate Mate
//
//  Created by josh gagnuss on 15/6/20.
//  Copyright © 2020 josh gagnuss. All rights reserved.
//

import UIKit

class Imperial_Liquid_Calculator: UIViewController {

    //close keyboard item
    var allTextFields: Array<UITextField>!
    
    // Imperial inputs
    @IBOutlet weak var requiredAmount: UITextField!
    @IBOutlet weak var nitrogenPercent: UITextField!
    @IBOutlet weak var phosphorusPercent: UITextField!
    @IBOutlet weak var potassiumPercent: UITextField!
    @IBOutlet weak var specificGravity: UITextField!

    
    
    
   // Ounces Output
    @IBOutlet weak var nitrogenOunces: UILabel!
    @IBOutlet weak var phosphorusOunces: UILabel!
    @IBOutlet weak var potassiumOunces: UILabel!
    
    // Gallons Output
    @IBOutlet weak var nitrogenGallons: UILabel!
    @IBOutlet weak var phosphorusGallons: UILabel!
    @IBOutlet weak var potassiumGallons: UILabel!
    @IBOutlet weak var poundsGallons: UILabel!
    
    
    //includes items to dismiss the keyboard
    override func viewDidLoad() {
        super.viewDidLoad()
        self.allTextFields = [self.requiredAmount, self.nitrogenPercent, self.phosphorusPercent, self.potassiumPercent, self.specificGravity]
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
    
    // Main Formula FUnction
    @IBAction func calculate(_ sender: Any) {
        
    let input1 = Double(requiredAmount.text!)!
    let input2 = Double(nitrogenPercent.text!)!
    let input3 = Double(phosphorusPercent.text!)!
    let input4 = Double(potassiumPercent.text!)!
    let input5 = Double(specificGravity.text!)!
  
        //Outputs poundsGallons
        let outPut1 = Double(input5 * 8.34)
        poundsGallons.text = String(format: "%.2F", (outPut1))
        
        // Main Formula
        let outPut2 = Double(input1 / (outPut1 * (input2 / 100)) * 128)
        let outPut3 = Double(input1 / (outPut1 * (input3 / 100)) * 128)
        let outPut4 = Double(input1 / (outPut1 * (input4 / 100)) * 128)
        let outPut5 = Double((outPut2 * 43.56) / 128)
        let outPut6 = Double((outPut3 * 43.56) / 128)
        let outPut7 = Double((outPut4 * 43.56) / 128)
        
        // Prints to Labels
        nitrogenOunces.text = String(format: "%.2F", (outPut2))
        phosphorusOunces.text = String(format: "%.2F", (outPut3))
        potassiumOunces.text = String(format: "%.2F", (outPut4))
        nitrogenGallons.text = String(format: "%.2F", (outPut5))
        phosphorusGallons.text = String(format: "%.2F", (outPut6))
        potassiumGallons.text = String(format: "%.2F", (outPut7))
        
    }
    
    }



