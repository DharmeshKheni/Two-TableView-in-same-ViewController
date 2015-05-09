//
//  ViewController.swift
//  testing
//
//  Created by Anil on 09/05/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var table1: UITableView!
    @IBOutlet weak var table2: UITableView!
    
    var table1Data = ["a","b","c"]
    var table2Data = ["1","2","3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table2.hidden = true
        
    }
    
    @IBAction func showTable1(sender: AnyObject) {
        
        table1.hidden = false
        table2.hidden = true
    }
    
    @IBAction func showTable2(sender: AnyObject) {
        
        table1.hidden = true
        table2.hidden = false
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == table1 {
            return table1Data.count
        }else if tableView == table2 {
            return table2Data.count
        }
        return Int()
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if tableView == table1 {
            let cell = table1.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
            
            let row = indexPath.row
            cell.textLabel?.text = table1Data[row]
            
            return cell
        }else if tableView == table2 {
            
            let cell = table2.dequeueReusableCellWithIdentifier("Cell1", forIndexPath: indexPath) as! UITableViewCell
            
            let row = indexPath.row
            cell.textLabel?.text = table2Data[row]
            
            return cell
        }
        
        return UITableViewCell()
    }
}

