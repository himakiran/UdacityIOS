//
//  TableViewController.swift
//  MeMeV2
//
//  Created by Himakiran Kumar on 05/12/20.
//

//
//  ViewController.swift
//  BondVillains
//
//  Created by Jason on 11/19/14.
//  Copyright (c) 2014 Udacity. All rights reserved.
//

import UIKit

// MARK: - ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    // MARK: Properties
    
    // Get ahold of some villains, for the table
    // This is an array of Villain instances
    let allVillains = Villain.allVillains
    
    // MARK: Table View Data Source
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.allVillains.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "memeCell")!
        let villain = self.allVillains[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        cell.textLabel?.text = villain.name
        cell.imageView?.image = UIImage(named: villain.imageName)
        
        // If the cell has a detail label, we will put the evil scheme in.
        if let detailTextLabel = cell.detailTextLabel {
            detailTextLabel.text = "Scheme: \(villain.evilScheme)"
        }
        
        return cell
    }
    
    
}

