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
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        zeroTipButton.isSelected = true
        splitLabel.text = calculatorBrain.getSplitValue()
    }

    @IBAction func tipButtonTapped(_ sender: UIButton) {
        zeroTipButton.isSelected = false
        tenTipButton.isSelected = false
        twentyTipButton.isSelected = false
        sender.isSelected = true
        billTotalText.endEditing(true)
        
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        calculatorBrain.setSplitValue(sender.value)
        splitLabel.text = calculatorBrain.getSplitValue()
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        calculatorBrain.setBillTotal(billTotalText.text ?? "0.0")
        if tenTipButton.isSelected == true{
            calculatorBrain.setTip(0.1)
        }
        else if twentyTipButton.isSelected == true{
            calculatorBrain.setTip(0.2)
        }
        else{
            calculatorBrain.setTip(0.0)
        }
        calculatorBrain.calculateTotalPerPerson()
        self.performSegue(withIdentifier: "goToResultView", sender: self)
    
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultView"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.calculatorBrain.totalPerPerson = calculatorBrain.totalPerPerson
            destinationVC.calculatorBrain.split = calculatorBrain.split
            destinationVC.calculatorBrain.tip = calculatorBrain.tip
        }
    }
}

