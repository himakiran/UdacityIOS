//
//  ViewController.swift
//  ModalExperiment
//
//  Created by Himakiran Kumar on 03/11/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func experiment(_ sender: UIButton) {
        let uiController = UIImagePickerController()
        
        present(uiController, animated: false, completion:nil)
        
    }
    
}

