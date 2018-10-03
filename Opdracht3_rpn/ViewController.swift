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
    
//    @IBOutlet weak var button9: UIButton!
    
    var currentNumber:String;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func digitPressed(_ sender: UIButton) {
        //labelZin.text =  sender.titleLabel?.text
        currentNumber = sender.titleLabel?.text
    }
    
    @IBAction func enterPressed(_ sender: UIButton) {
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
    }
    
    @IBAction func clearPressed(_ sender: UIButton) {
    }
}

