//
//  ViewController.swift
//  Hello World
//
//  Created by Ramon Gomez on 2/27/17.
//  Copyright © 2017 Ramon's. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var yearsField: UITextField!
    @IBOutlet weak var dogYears: UILabel!
    private let firstYear = 15
    private let secondYear = 9
    var yearsCalc: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Actions
    @IBAction func submitButton(_ sender: UIButton) {
        if let yearEntered = Int(yearsField.text!) {
            switch yearEntered {
            case 0: yearsCalc = 0
            case 1: yearsCalc = firstYear
            case 2: yearsCalc = firstYear + secondYear
            default: yearsCalc = firstYear + secondYear + (yearEntered - 2) * 4
            }
            dogYears.text = "\(yearsCalc!)"
        } else {
            dogYears.text = "No age entered."
        }
    }

}

// Note for the dogs years
// 1 dog years = 15 human years
// 2 dog years = 15 + 9 human years
// beyon = 15 + 9 + 4 human years
