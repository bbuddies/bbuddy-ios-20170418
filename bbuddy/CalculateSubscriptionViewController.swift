//
//  CalculateSubscriptionViewController.swift
//  bbuddy
//
//  Created by Hardy Liu on 2017/4/19.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import UIKit

class CalculateSubscriptionViewController: UIViewController {

    @IBOutlet weak var startDateTextField: UITextField!
    @IBOutlet weak var endDateTextField: UITextField!
    @IBOutlet weak var amountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func calculateButtonBePressed(_ sender: UIButton) {
        guard let startDateString = startDateTextField.text, let endDateString = endDateTextField.text else {
            return
        }
        
        let startDate = convertStringToDate(dateString: startDateString)
        let endDate = convertStringToDate(dateString: endDateString)
        
        guard let start = startDate, let end = endDate else {
            return
        }
        let amount = SubscriptionCalculator.calculate(startDate: start, endDate: end)
        amountLabel.text = "$\(amount)"
    }
    
    func convertStringToDate(dateString: String) -> Date? {
        let dateFormatter = DateFormatter();
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        return dateFormatter.date(from: dateString)
    }
}
