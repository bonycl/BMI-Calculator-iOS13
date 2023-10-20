//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by D i on 30.08.2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimaPlace = String(format: "%.1f", bmi?.value ?? 0.9)
        return bmiTo1DecimaPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
    
    /// 
    /// - Parameters:
    ///   - height: <#height description#>
    ///   - weight: <#weight description#>
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue =  weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddel!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: UIColor.red)
        }
        
    }
}





