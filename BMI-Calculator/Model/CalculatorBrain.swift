//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by John Wallace on 8/7/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit


struct CalculatorBrain {
    
    var bmi: BMI?

    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            
            bmi = BMI(value: bmiValue, advice: "Eat more pies.", color: UIColor.blue)
            
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "WOAH! Your in Shape! 😁", color: UIColor.green)
            
        } else {
            
            bmi = BMI(value: bmiValue, advice: "Go for a run!", color: UIColor.red)
                
        }
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "No advice"
        
    }
    
    func getColor() -> UIColor! {
        
        return bmi?.color ?? UIColor.white
        
    }
    
}
