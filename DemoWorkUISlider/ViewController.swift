//
//  ViewController.swift
//  DemoWorkUISlider
//
//  Created by дмитрий василевский on 21.05.25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelHeight: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        labelHeight.text = String(format: "%.1f", sender.value)
        print(sender.value)
    }
    
}

