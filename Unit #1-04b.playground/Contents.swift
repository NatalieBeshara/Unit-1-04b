
// Created on: 28-Sept-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program calculates the radius of a circle

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let radiusLabel = UILabel()
    let radiusTextField = UITextField()
    let calcuateButton = UIButton()
    let circumferenceLabel = UILabel()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Calcuate the radius of a cirlce"
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        radiusLabel.text = "Enter radius"
        radiusLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(radiusLabel)
        radiusLabel.translatesAutoresizingMaskIntoConstraints = false
        radiusLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        radiusLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 20).isActive = true
        
        radiusTextField.borderStyle = UITextBorderStyle.roundedRect
        radiusTextField.placeholder = "In cm   "
        view.addSubview(radiusTextField)
        radiusTextField.translatesAutoresizingMaskIntoConstraints = false
        radiusTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 130).isActive = true
        radiusTextField.bottomAnchor.constraint(equalTo: radiusLabel.topAnchor, constant: 27).isActive = true
        
        calcuateButton.setTitle("Calculate", for: UIControlState.normal)
        calcuateButton.setTitleColor(.blue, for: .normal)
        calcuateButton.addTarget(self, action: #selector(calculateCircumference), for: .touchUpInside)
        view.addSubview(calcuateButton)
        calcuateButton.translatesAutoresizingMaskIntoConstraints = false
        calcuateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        calcuateButton.topAnchor.constraint(equalTo: radiusLabel.bottomAnchor, constant: 20).isActive = true
        
        circumferenceLabel.text = nil
        circumferenceLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(circumferenceLabel)
        circumferenceLabel.translatesAutoresizingMaskIntoConstraints = false
        circumferenceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        circumferenceLabel.topAnchor.constraint(equalTo: calcuateButton.bottomAnchor, constant: 20).isActive = true
    }
    @objc func calculateCircumference() {
        // calculate the area and perimeter 
        
        let PI : Double = 3.14
        let radius : Double = Double(radiusTextField.text!)!
        
        
        let circumference = 2.0 * PI * radius
        
        circumferenceLabel.text = "The circumference is: \(circumference) cm"
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
