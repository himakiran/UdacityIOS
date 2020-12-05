//
//  CollectionViewController.swift
//  MeMeV2
//
//  Created by Himakiran Kumar on 05/12/20.
//

//
//  VillainCollectionViewController.swift
//  BondVillains
//
//  Created by Gabrielle Miller-Messner on 2/3/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

// MARK: - VillainCollectionViewController: UICollectionViewController

class CollectionViewController: UICollectionViewController {

    // MARK: Properties
    
    // Get ahold of some villains, for the table
    // This is an array of Villain instances.
    let allVillains = Villain.allVillains
    
    // MARK: Life Cycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
    
    // MARK: Collection View Data Source
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.allVillains.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        let villain = self.allVillains[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        cell.NameLabel.text = villain.name
        cell.ImageView?.image = UIImage(named: villain.imageName)
        //cell.schemeLabel.text = "Scheme: \(villain.evilScheme)"
        
        return cell
    }
    
    
}

