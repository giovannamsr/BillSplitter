//
//  ResultViewController.swift
//  BillSplitter
//
//  Created by Giovanna Rodrigues on 16/09/21.
//

import UIKit

class ResultViewController: UIViewController {



    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var detailResultLabel: UILabel!
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = calculatorBrain.getTotalPerPerson()
        detailResultLabel.text = calculatorBrain.getDetailResultLabel()
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
