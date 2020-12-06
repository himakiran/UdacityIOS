//
//  MemeDetailViewController.swift
//  MeMeV2
//
//  Created by Himakiran Kumar on 06/12/20.
//

import Foundation

import UIKit

// MARK: - MemeDetailViewController: UIViewController

class MemeDetailViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var imgView: UIImageView!
    
    var showImage:UIImage! = nil
    
    override func viewWillAppear(_ animated: Bool) {
        imgView.image = showImage
    }
    
    
}
