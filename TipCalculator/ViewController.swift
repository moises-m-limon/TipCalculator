//
//  ViewController.swift
//  TipCalculator
//
//  Created by Moises Limon on 10/9/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var total = 0.0
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipPercentageLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var splitTotalLabel: UILabel!
    
    @IBOutlet weak var friendsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
           // Sets the title in the Navigation Bar
             
             self.title = "Tip Calculator"
             
             self.view.backgroundColor = UIColor(hue: 0.4, saturation: 0.57, brightness: 0.93, alpha: 1)
             
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    @IBAction func calculateTip(_ sender: Any) {
          //Get inital bill amount and calculate tips
             
             let bill = Double(billAmountTextField.text!) ?? 0
             let tipPercentages = [0.15, 0.18, 0.2]
        
             // Calculate tip and total
             
             let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
             total = bill + tip
         
             //Update the tips and total labels
             tipPercentageLabel.text = String(format: "$%.2f", tip)
             totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func calculateSplitTotal(_ sender: Any) {
        //Get inital amount of friends
        let friends = Double(friendsTextField.text!) ?? 0
        
        //calculate split total
        var split = 0.00
        if friends >= 0 {
             split = total/(friends+1)
        }
        splitTotalLabel.text =  String(format: "$%.2f", split)
        
    }
}

