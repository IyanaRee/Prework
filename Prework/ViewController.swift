//
//  ViewController.swift
//  Prework
//
//  Created by Student on 2/14/22.
//

import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipAmout: UILabel!
    @IBOutlet weak var setmentControl: UISegmentedControl!
    @IBOutlet weak var totalAmount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }
    
    @IBAction func calculateBill(_ sender: UISegmentedControl) {
        let bill = Double(billAmount.text!) ?? 0
        let tipPercentage = [0.1, 0.15, 0.2]
        let tip = bill * tipPercentage[setmentControl.selectedSegmentIndex]
        let total = bill + tip
        print(bill)
        tipAmout.text = String(format: "$%.2f", tip)
        totalAmount.text = String(format: "$%.2f", total)
       
    }
    
    
}

