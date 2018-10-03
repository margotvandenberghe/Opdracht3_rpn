//
//  ViewController.swift
//  Opdracht3_rpn
//
//  Created by Margot Vandenberghe on 01/10/2018.
//  Copyright © 2018 margotvandenberghe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textViewScherm: UITextView!
    
    @IBOutlet weak var labelZin: UILabel!
    
    let calcEngine = CalcEngine()
    
    var currentNumber: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func digitPressed(_ sender: UIButton) {
        //labelZin.text =  sender.titleLabel?.text
        currentNumber = currentNumber + String(sender.titleLabel?.text ?? "")
        clearTextField()
    }
    
    @IBAction func enterPressed(_ sender: UIButton) {
        let doub:Double = Double(currentNumber) ?? 0
        calcEngine.addOperand(Operand: doub)
        currentNumber = ""
        updateTextField()
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        if calcEngine.getStack().count < 2 {
            labelZin.text = "Je moet minimum 2 getallen invoeren voordat je een bewerking kan uitvoeren"
        }
        else {
            let s = String(sender.titleLabel?.text ?? "")
            let r = calcEngine.performOperation(Operator: s)
            labelZin.text = r.feedback
            updateTextField()
        }
        
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
        calcEngine.clearStack()
        clearTextField()
    }
    
    func updateTextField() {
        var s = ""
        for d in calcEngine.getStack() {
            if s == "" {
                s = s + String(d)
            }
            else {
                s = s + "\n" + String(d)
            }
        }
        textViewScherm.text = s
    }
    
    func clearTextField() {
        textViewScherm.text = ""
    }
    
    
}


