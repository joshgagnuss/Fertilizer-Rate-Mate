//
//  Fertilizer ViewController.swift
//  Fertilizer Rate Mate
//
//  Created by josh gagnuss on 16/6/20.
//  Copyright © 2020 josh gagnuss. All rights reserved.
//

import UIKit

class Fertilizer_ViewController: UIViewController {

    @IBOutlet weak var imperialLiquid: UIButton!
    @IBOutlet weak var imperialGranular: UIButton!
    @IBOutlet weak var metricLiquid: UIButton!
    @IBOutlet weak var metricGranular: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imperialLiquid.layer.cornerRadius = 15.0
        imperialGranular.layer.cornerRadius = 15.0
        metricLiquid.layer.cornerRadius = 15.0
        metricGranular.layer.cornerRadius = 15.0
    }
}
