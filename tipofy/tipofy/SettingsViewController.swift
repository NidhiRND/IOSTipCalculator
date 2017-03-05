//
//  SettingsViewController.swift
//  tipofy
//
//  Created by Nidhi Shah on 3/4/17.
//  Copyright © 2017 Nidhi Shah. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

   
    @IBOutlet weak var tipControlSett: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        let intValue = defaults.integer(forKey: "tippercentage")
        
        tipControlSett.selectedSegmentIndex = intValue
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    @IBAction func setTipPercentage(_ sender: AnyObject) {
        
       // let tipPercentage = [0.15,0.2,0.25]
        
        let defaults = UserDefaults.standard
        // defaults.setObject("some_string_to_save", forKey: "some_key_that_you_choose")
        defaults.set(tipControlSett.selectedSegmentIndex, forKey: "tippercentage")
       
        defaults.synchronize()
        
        self.navigationController?.popToRootViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
