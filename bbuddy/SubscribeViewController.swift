//
//  SubscribeViewController.swift
//  bbuddy
//
//  Created by Hardy Liu on 2017/4/19.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import UIKit

class SubscribeViewController: UIViewController {

    @IBOutlet weak var calulateSubscriptionPlanButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func setupAccessibility() {
        calulateSubscriptionPlanButton.accessibilityIdentifier = "add"
    }
}
