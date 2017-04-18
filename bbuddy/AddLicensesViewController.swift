//
//  AddLicensesViewController.swift
//  bbuddy
//
//  Created by Hardy Liu on 2017/4/18.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import UIKit

class AddLicensesViewController: UIViewController {

    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var amountTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Mark- actions
    @IBAction func saveButtonBePressed(_ sender: UIButton) {
        print(monthTextField.text ?? "")
        print(amountTextField.text ?? "")
    }
}
