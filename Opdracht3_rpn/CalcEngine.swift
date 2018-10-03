//
//  CalcEngine.swift
//  Opdracht3_rpn
//
//  Created by Margot Vandenberghe on 01/10/2018.
//  Copyright © 2018 margotvandenberghe. All rights reserved.
//

import Foundation

class CalcEngine {
    
    var stack : Array<Double>;
    
    init() {
        stack = [];
    }
    
    func clearStack () {
        stack.removeAll();
    }
    
    func addOperand(Operand operand: Double) {
        stack.append(operand);
    }
    
    func performOperation(Operator operation: String) -> (result:Double?, feedback: String) {
        let lastTwo = stack.suffix(2);
        let first = lastTwo[0];
        let second = lastTwo[1];
        var strOperation : String;
        var result : Double;
        
        switch operation {
        case "+":
            result = first + second;
            strOperation = "opgeteld"
        case "-":
            result = first - second;
            strOperation = "afgetrokken"
        case "x":
            result = first * second;
            strOperation = "vermenigvuldigd"
        case "/":
            result = first / second;
            strOperation = "gedeeld"
        default:
            result = 0
            strOperation = ""
        }
        let s1 = "Getal " + String(first) + " en getal " + String(second)
        let fb =  s1 + " zijn " + strOperation;
        
        stack.removeLast(2)
        stack.append(result)
        
        return (result, fb)
        
    }
    
    
    
}
