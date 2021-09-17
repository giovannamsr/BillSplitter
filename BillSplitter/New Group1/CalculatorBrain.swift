//
//  CalculatorBrain.swift
//  BillSplitter
//
//  Created by Giovanna Rodrigues on 17/09/21.
//

import Foundation

struct CalculatorBrain {
    var split : Int = 1
    var billTotal : Float = 0.0
    var tip : Float = 0.0
    var totalPerPerson : Float = 0.0
    
    func getSplitValue() -> String{
        return String(split)
    }
    mutating func setSplitValue(_ value: Double){
        split = Int(value)
    }
    mutating func setBillTotal(_ value : String){
        billTotal = Float(value) ?? 0.0
    }
    mutating func setTip(_ value: Float){
        tip = value
    }
    mutating func calculateTotalPerPerson(){
        totalPerPerson = (billTotal + (billTotal*tip))/Float(split)
    }
    func getTip() -> String{
        return String(tip * 100)
    }
    func getTotalPerPerson() -> String{
        return String(format:"%.2f",totalPerPerson)
    }
    func getDetailResultLabel() -> String{
        return "Split between \(split) people, with \(getTip())% tip"
    }
    
}
