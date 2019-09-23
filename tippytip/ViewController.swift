//
//  ViewController.swift
//  tippytip
//
//  Created by Beatrice Villanueva on 9/23/19.
//  Copyright © 2019 Beatrice Villanueva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Elements
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true) //Dismiss the keyboard
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0 //Everything to the left of the question make, if it's not valid. Make it 0
        
        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        //\() allows you to put variables
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

