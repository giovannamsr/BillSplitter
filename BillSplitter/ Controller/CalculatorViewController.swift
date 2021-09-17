//
//  ViewController.swift
//  BillSplitter
//
//  Created by Giovanna Rodrigues on 16/09/21.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var twentyTipButton: UIButton!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var billTotalText: UITextField!
    
    var splitValue = 1
    var totalPerPerson : Float = 0.0
    var billTotal : Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zeroTipButton.isSelected = true
        splitLabel.text = String(splitValue)
    }

    @IBAction func tipButtonTapped(_ sender: UIButton) {
        zeroTipButton.isSelected = false
        tenTipButton.isSelected = false
        twentyTipButton.isSelected = false
        sender.isSelected = true
        billTotalText.endEditing(true)
        
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        splitLabel.text = String(Int(sender.value))
        splitValue = Int(sender.value)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        billTotal = Float(billTotalText.text ?? "0.0") ?? 0.0
        if tenTipButton.isSelected == true{
            billTotal = billTotal + 0.1*billTotal
        }
        else if twentyTipButton.isSelected == true{
            billTotal = billTotal + 0.2*billTotal
    
        }
        totalPerPerson = billTotal/Float(splitValue)
        print(totalPerPerson)
    
    }
}

