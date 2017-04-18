//
//  LicensesViewController.swift
//  bbuddy
//
//  Created by Hardy Liu on 2017/4/18.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import UIKit

class LicensesViewController: UIViewController {

    @IBOutlet weak var addLicensesButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupAccessibility()
    }

    func setupAccessibility() {
        addLicensesButton.accessibilityIdentifier = "add_license_button"
    }
}
