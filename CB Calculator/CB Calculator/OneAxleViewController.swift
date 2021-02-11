//
//  OneAxleViewController.swift
//  CB Calculator
//
//  Created by Spencer David Pursley on 1/19/21.
//

// How to use Navigation Controller
// https://www.youtube.com/watch?v=ikFVfcJY6VE

// Link for formating the text field and text view. Not the most helpful viedo.
// https://www.youtube.com/watch?v=uVCFV668dSQ

// How to make the keyboard of a textField the numpad
// https://www.youtube.com/watch?v=6iVkJo0MPQg

// Need to figure out how to convert String input to a Double
// https://www.youtube.com/watch?v=NnM2WgFeKrE

// This is a useful video about UITextFields and explains how to enter input and dismiss with the return key or a tap outside the view.
// https://www.youtube.com/watch?v=jY9t5rX8wHE

// How to get the input from the UITextFields
// https://www.youtube.com/watch?v=CUp4mSmkQnw

// How to scroll in a ViewController
// https://www.youtube.com/watch?v=LhhW3xqhCzg

// How to create a round corner
// https://www.youtube.com/watch?v=dB14lZjW7ZU

import UIKit

// Not sure if UITextFieldDelegate should be in there or not
class OneAxleViewController: UIViewController {
    
    /*
     Note that if you make a view controller file it needs to originate from
     the same directory as the project. Basically the second to top file is the
     one that needs to be used.
    */
    
    @IBOutlet weak var d1Input: UITextField!
    @IBOutlet weak var w1Input: UITextField!
    
    @IBOutlet weak var cbDisplay: UITextView!
    
    // I think this is used like the "main method" in java
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Make the keyboard a numpad since there will be no text entered.
        d1Input.keyboardType = UIKeyboardType.numberPad
        w1Input.keyboardType = UIKeyboardType.numberPad
        
        configureTextFields()
        configureTapGetsture()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
        
    // Formating for what happens when the user taps white space?
    // Make sure the the file name (Ex: "TwoAxleViewController") matches the current file.
    private func configureTapGetsture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(OneAxleViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    @objc func handleTap() {
        print("Handle tap was called")
        view.endEditing(true)
    }
    
    // Make sure that this function is called in the "Main" method
    private func configureTextFields() {
        d1Input.delegate = self
        w1Input.delegate = self
    }
    
    // CB Logic and operations based on the formula found in DTR Part III Apendix P. This is public knowledge and free to access.
    // https://www.ustranscom.mil/dtr/part-iii/dtr_part_iii_app_p.pdf
    @IBAction func calculateCB(_ sender: Any) {
        view.endEditing(true) // May not need this here
        let d1 = d1Input.text
        let w1 = w1Input.text

        
        // Convert the entered text to a Double value
        let d1Double = Double(d1!)
        let w1Double = Double(w1!)
        
        // Calculate the moment
        let m1 = d1Double! * w1Double!
        
        // Gross Weight
        let grossWeight = w1Double

        // Answer
        let cb = (m1 / grossWeight!)

        cbDisplay.text = "The Center of Balance is: \(cb)"
    }
    
    // Eventually make a function that converts a Double into a String
    
}

// When you tap a text field it is waiting for events and when you tap a different field it resigns the action heiarchy?
// Make sure the the file name (Ex: "TwoAxleViewController") matches the current file.
extension OneAxleViewController : UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
