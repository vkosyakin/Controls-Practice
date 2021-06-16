//
//  ViewController.swift
//  Controls Practice
//
//  Created by Валера on 16.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Button: UIButton!
    
    @IBOutlet var switches: [UISwitch]!
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
     
    @IBAction func buttonPressed() {
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
    }
    
    @IBAction func sliderMoved() {
    }
    
    @IBAction func textFieldEdited() {
    }
}

