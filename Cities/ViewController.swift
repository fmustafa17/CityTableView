//
//  ViewController.swift
//  Cities
//
//  Created by Farhana Mustafa on 9/8/20.
//  Copyright © 2020 Farhana Mustafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    let CellIdentifier = "CityCell"
    var checked = [Bool]()
    
    // for saving currently selected index path
    var selectedIndexes = [[IndexPath.init(row: 0, section: 1)]]

    let data = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX", "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX", "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN", "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX", "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checked = [Bool](repeating: false, count: data.count)
        tableView.dataSource = self
        tableView.delegate = self
        let cellNib = UINib(nibName: "CityCell", bundle: Bundle.main)
        tableView.register(cellNib, forCellReuseIdentifier: CellIdentifier)
    }
}

