//
//  ViewController.swift
//  BillSplitter
//
//  Created by Giovanna Rodrigues on 16/09/21.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    @IBOutlet weak var billTotalLabel: UILabel!
    @IBOutlet weak var zeroTipButton: UIButton!
    @IBOutlet weak var tenTipButton: UIButton!
    @IBOutlet weak var twentyTipButton: UIButton!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    let splitValue = 0
    
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
        
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        splitLabel.text = String(splitValue + Int(sender.value))
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        if zeroTipButton.isSelected == true{
            print(0.0)
        }
        else if tenTipButton.isSelected == true{
            print(0.1)
        }
        else{
            print(0.2)
        }
    
    }
}

