//
//  ViewController.swift
//  Controls Practice
//
//  Created by Валера on 16.06.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet var switches: [UISwitch]!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    
    var number = 128 {
        didSet {
            number = (number + 256) % 256
           
            updateUI()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rotateSwitches()
       updateUI()
    }
    
    func rotateSwitches(){
        for `switch` in switches{
            `switch`.layer.transform = CATransform3DMakeRotation(-.pi/2, 0, 0, 1)
        }
    }
    /// Updates number from the switchers set
    func updateNumberFromSwitches(){
     var number = 0
        for `switch` in switches{
            number += `switch`.isOn ? `switch`.tag : 0
        }
        self.number = number
    }
    
    /// Updates switchers from the number
    func updateSwitches(){
        for `switch` in switches{
            `switch`.isOn = Int(number) & `switch`.tag != 0
    }
}
    
    /// Updates all outlets to number
    func updateUI(){
        button.setTitle("\(number)", for: [])
        updateSwitches()
        slider.value = Float(number)
        textField.text = "\(number)"
    }
     
    @IBAction func buttonPressed() {
        number += 1
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        updateNumberFromSwitches()
    }
    
    @IBAction func sliderMoved() {
        number = Int(slider.value)
    }
    
    @IBAction func textFieldEdited() {
        number = Int(textField.text ?? "") ?? 128
        
    }
    @IBAction func screenTapped(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        if location.x < view.bounds.midX {
            number -= 1
        } else {
            number += 1
    }
  }
}
