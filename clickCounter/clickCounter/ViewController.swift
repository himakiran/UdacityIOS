//
//  ViewController.swift
//  clickCounter
//
//  Created by Himakiran Kumar on 21/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    var count: Int = 0
    var label: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Adding a UI label directly from code
        let uilabel = UILabel()
        uilabel.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        uilabel.text = "  0" // spaces to align with click button below
        view.addSubview(uilabel)
        self.label = uilabel
        
        // Adding a button directly from code
        let uibutton = UIButton()
        uibutton.frame = CGRect(x: 150, y: 200, width: 60, height: 60)
        uibutton.setTitle("Click", for: .normal)
        uibutton.setTitleColor(UIColor.brown, for: .normal)
        view.addSubview(uibutton)
        
        // adding action to the ui button
        uibutton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func incrementCount() {
        self.count+=1
        self.label.text = "\(self.count)"
    }


}

