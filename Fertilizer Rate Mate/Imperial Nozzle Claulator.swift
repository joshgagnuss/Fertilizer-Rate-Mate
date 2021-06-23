//
//  Imperial Nozzle Claulator.swift
//  Fertilizer Rate Mate
//
//  Created by josh gagnuss on 15/6/20.
//  Copyright © 2020 josh gagnuss. All rights reserved.
//

import UIKit

class Imperial_Nozzle_Claulator: UIViewController {
    
    @IBOutlet weak var imperialAppRate: UITextField!
    @IBOutlet weak var imperialSpeed: UITextField!
    @IBOutlet weak var ImperialSpace: UITextField!
    @IBOutlet weak var result: UILabel!
    var allTextFields: Array<UITextField>!

     //includes items to dismiss the keyboard
    override func viewDidLoad() {
        super.viewDidLoad()
 self.allTextFields = [self.imperialAppRate, self.imperialSpeed, self.ImperialSpace]
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
    
    // Main Function Formula
    @IBAction func Calculate(_ sender: Any) {
        let input1 = Double(imperialAppRate.text!)!
        let input2 = Double(imperialSpeed.text!)!
        let input3 = Double(ImperialSpace.text!)!
        // Output presented as type double to allow for decimal points in nozzle output results
        let outPut = Double(input1 * input2 * input3 / 5940.00)
        result.text = String(format: "%.2F", (outPut))
    }
    
}
