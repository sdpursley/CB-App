//
//  TwoAxleViewController.swift
//  CB Calculator
//
//  Created by Spencer David Pursley on 1/23/21.
//

import UIKit

class TwoAxleViewController: UIViewController {

    @IBOutlet weak var d1Input: UITextField!
    @IBOutlet weak var w1Input: UITextField!
    
    @IBOutlet weak var d2Input: UITextField!
    @IBOutlet weak var w2Input: UITextField!
    
    @IBOutlet weak var cbDisplay: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Round Button corner
//        calculateCB.layer.cornerRadius = 15
//        calculateCB.layer.masksToBounds = true
        
        // Make the keyboard a numpad since there will be no text entered.
        d1Input.keyboardType = UIKeyboardType.numberPad
        w1Input.keyboardType = UIKeyboardType.numberPad
        
        d2Input.keyboardType = UIKeyboardType.numberPad
        w2Input.keyboardType = UIKeyboardType.numberPad
        
        configureTextFields()
        configureTapGetsture()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Formating for what happens when the user taps white space?
    // Make sure the the file name (Ex: "TwoAxleViewController") matches the current file.
    private func configureTapGetsture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(TwoAxleViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    @objc func handleTap() {
        print("Handle tap was called")
        view.endEditing(true)
    }
    
    private func configureTextFields() {
        d1Input.delegate = self
        w1Input.delegate = self
        
        d2Input.delegate = self
        w2Input.delegate = self
    }
    

    @IBAction func calculateCB(_ sender: UIButton) {
        view.endEditing(true) // May not need this here
        let d1 = d1Input.text
        let w1 = w1Input.text
        
        let d2 = d2Input.text
        let w2 = w2Input.text
        
        // Convert the entered text to a Double value
        let d1Double = Double(d1!)
        let w1Double = Double(w1!)
        
        let d2Double = Double(d2!)
        let w2Double = Double(w2!)
        
        // Calculate the moment
        let m1 = d1Double! * w1Double!
        let m2 = d2Double! * w2Double!
        
        // Calculate the total moment
        let totalMoment = m1 + m2
        
        // Gross weight
        let grossWeight = w1Double! + w2Double!
        
        // Answer
        let cb = (totalMoment / grossWeight)
        
        cbDisplay.text = "The Center of Balance is: \(cb)"
    }
    

}

// Make sure the the file name (Ex: "TwoAxleViewController") matches the current file.
extension TwoAxleViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
