//
//  ResultViewController.swift
//  BillSplitter
//
//  Created by Marcelo Rodrigues de Sousa on 16/09/21.
//

import UIKit

class ResultViewController: UIViewController {



    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var detailResultLabel: UILabel!
    var result : Float?
    var splitNumber : Int?
    var tipNumber : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let resultString = String(format: "%.2f", result ?? 0.0)
        resultLabel.text = resultString
        detailResultLabel.text = "Split between \(splitNumber ?? 0) people, with \(tipNumber ?? 0)% tip"
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
