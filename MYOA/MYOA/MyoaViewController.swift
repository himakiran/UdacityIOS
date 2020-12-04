//
//  ViewController.swift
//  MYOA
//
//  Created by Himakiran Kumar on 01/12/20.
//

import UIKit

class MyoaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Start Over", style: .plain, target: self, action: #selector(startOver))

    }
    @objc func startOver() {
            if let navigationController = navigationController {
                navigationController.popToRootViewController(animated: true)
            }
    }
    
    deinit {
        print("Deintialized : \(self)")
    }


}

