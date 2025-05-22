//
//  ViewController.swift
//  DemoWorkUISlider
//
//  Created by дмитрий василевский on 21.05.25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelHeight: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let height = String(format: "%.1f", sender.value)
        labelHeight.text = "\(height) m"
        print(sender.value)
    }
    @IBAction func weightSliderChanger(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        labelWeight.text = weight
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        let bmi = weight / (height * height)
        labelResult.text = "Ваш результат: \(bmi)"
        print(bmi)
        
    }
}

