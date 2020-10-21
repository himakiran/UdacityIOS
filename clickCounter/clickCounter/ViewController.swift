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
    var label2: UILabel = UILabel()
    var button: UIButton = UIButton()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Adding a UI label directly from code
        let uilabel = UILabel()
        uilabel.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        uilabel.text = "00" // spaces to align with click button below
        uilabel.backgroundColor=UIColor.darkGray
        view.addSubview(uilabel)
        self.label = uilabel
        
        // add another UI label
        let uilabel2 = UILabel()
        uilabel2.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        uilabel2.text = "Color"
        uilabel2.backgroundColor = UIColor.darkGray
        view.addSubview(uilabel2)
        self.label2 = uilabel2
        
        // Adding a button directly from code
        let uibutton = UIButton()
        uibutton.frame = CGRect(x: 150, y: 350, width: 60, height: 60)
        uibutton.setTitle("Click", for: .normal)
        uibutton.setTitleColor(UIColor.black, for: .normal)
        uibutton.backgroundColor = UIColor.magenta
        view.addSubview(uibutton)
        self.button = uibutton
        
        // adding action to the ui button
        uibutton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func incrementCount() {
        let colorsList: Array = [UIColor.blue,UIColor.red,UIColor.green,UIColor.orange,UIColor.black]
        let colorsLabels: Array = ["blue","red","green","orange","black"]
        self.count+=1
        self.label.text = "\(self.count)"
        self.label2.text = colorsLabels[self.count % 5]
        self.button.backgroundColor = colorsList[self.count % 5]
        
    }


}

