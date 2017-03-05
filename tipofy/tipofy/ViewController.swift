//
//  ViewController.swift
//  tipofy
//
//  Created by Nidhi Shah on 3/4/17.
//  Copyright © 2017 Nidhi Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
  
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tip View  will appear")
        
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "tippercentage")
        
        tipControl.selectedSegmentIndex = intValue
        
        
        print(intValue)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        
        view.endEditing(true)
        
    }
    @IBAction func calculateTip(_ sender: AnyObject) {
       
        let tipPercentage = [0.15,0.2,0.25]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String.init(format: "$%.2f", tip)
        totalLabel.text = String.init(format: "$%.2f",total)
    }
    
   
}

