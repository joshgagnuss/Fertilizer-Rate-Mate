//
//  Nozzle Menu.swift
//  Fertilizer Rate Mate
//
//  Created by josh gagnuss on 16/6/20.
//  Copyright © 2020 josh gagnuss. All rights reserved.
//

import UIKit

class Nozzle_Menu: UIViewController {

    @IBOutlet weak var metric: UIButton!
    @IBOutlet weak var imperial: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        metric.layer.cornerRadius = 15.0
        imperial.layer.cornerRadius = 15.0
    }
    
}
