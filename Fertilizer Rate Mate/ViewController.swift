//
//  ViewController.swift
//  Fertilizer Rate Mate
//
//  Created by josh gagnuss on 15/6/20.
//  Copyright © 2020 josh gagnuss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nozzle: UIButton!
    @IBOutlet weak var fertilizer: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        nozzle.layer.cornerRadius = 15.0
        fertilizer.layer.cornerRadius = 15.0
    }
}

