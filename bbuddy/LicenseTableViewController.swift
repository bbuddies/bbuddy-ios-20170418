//
//  LicenseTableViewController.swift
//  bbuddy
//
//  Created by Jack KY Chen on 2017/4/18.
//  Copyright © 2017年 odd-e. All rights reserved.
//

import UIKit

class LicenseTableViewController: UITableViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    @IBAction func touchAddButton(_ sender: UIBarButtonItem) {
        print("touch add")
        showAddAlert()
    }
    
    @IBAction func touchQueryButton(_ sender: UIBarButtonItem) {
        print("touch query")
        showQueryAlert()
    }
    
    func showQueryAlert(){
        let alert = UIAlertController(title: "How much money?", message: "input start / end date (including)", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addTextField(configurationHandler: textFieldStartDateAmountConfiguration)
        alert.addTextField(configurationHandler: textFieldEndDateAmountConfiguration)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler:{ (alertAction)in
            print("User click Ok button")
            
            let calculator:LicensesCalculator = LicensesCalculator(startDate: (alert.textFields?[0].text)!, endDate: (alert.textFields?[1].text)!)
            
            weak var weakSelf = self
            calculator.totalAmount({ (totalAmount) in
                if let fee = totalAmount {
                    weakSelf?.alertTotalAmount(amount: Int(fee))
                }else{
                    weakSelf?.alertErrorInput()
                }
            })
        }))
        
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    
    func showAddAlert(){
        let alert = UIAlertController(title: "Add New License", message: "Input Your Info", preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addTextField(configurationHandler: textFieldMonthConfiguration)
        alert.addTextField(configurationHandler: textFieldAmountConfiguration)
        
        alert.addAction(UIAlertAction(title: "Save", style: UIAlertActionStyle.default, handler:{ (alertAction)in
            print("User click Ok button")
            let month:String = (alert.textFields?[0].text)!
            let amount:String = (alert.textFields?[1].text)!
            let newLicense:License = License()
            newLicense.month = month
            newLicense.amount = amount
            
            weak var weakSelf = self
            newLicense.save({ (result) in
                if result == false {
                    weakSelf?.alertYY()
                }
            })
        }))
        
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    
    func textFieldMonthConfiguration(textField: UITextField!){
        textField.placeholder = "month"
    }
    
    func textFieldAmountConfiguration(textField: UITextField!){
        textField.placeholder = "amount"
    }
    func textFieldStartDateAmountConfiguration(textField: UITextField!){
        textField.placeholder = "StartDate"
    }
    func textFieldEndDateAmountConfiguration(textField: UITextField!){
        textField.placeholder = "EndDate"
    }
    
    func alertYY(){
        let alert = UIAlertController(title: "yy", message: "you have wrong input", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (UIAlertAction) in
            
        }))
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    
    func alertErrorInput(){
        let alert = UIAlertController(title: "Error yy", message: "you have wrong input", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (UIAlertAction) in
            
        }))
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    
    func alertTotalAmount(amount:Int){
        let alert = UIAlertController(title: "the total fee is", message: "\(amount)", preferredStyle: UIAlertControllerStyle.alert)
        alert.accessibilityLabel = "total_amount"
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (UIAlertAction) in
            
        }))
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
    }
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
