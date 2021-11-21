//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Yasser Hajlaoui on 11/21/21.
//  Copyright © 2021 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic{
    
    private var displayValue: Double{
        get{
            guard let number = Double(displayLabel.text!) else {
                 fatalError("Cannot convert display label text to a Double")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
        
    
    func calculate(displayValue: double){
        
        if let calcMethod =  displayValue {
            if calcMethod == "+/-" {
                displayValue = displayValue * -1
            } else if calcMethod == "AC" {
                displayValue = 0
            } else if calcMethod == "%" {
                displayValue = displayValue * 0.01
            }
        }
    }
}

