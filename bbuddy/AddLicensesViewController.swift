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
    

    //Mark- actions
    @IBAction func saveButtonBePressed(_ sender: UIButton) {
        guard let month = monthTextField.text, let amount = Int(amountTextField.text ?? "") else {
            return
        }
        
        let license = License()
        license.month = month
        license.amount = amount
        license.save {
            DispatchQueue.main.async { [unowned me = self] in
                me.navigationController?.popViewController(animated: true)
            }
        }
    }
}
