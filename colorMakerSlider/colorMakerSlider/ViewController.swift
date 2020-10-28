//
//  ViewController.swift
//  colorMakerSlider
//
//  Created by Himakiran Kumar on 29/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSlider: UISlider?
    @IBOutlet weak var blueSlider: UISlider?    
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var colorView : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        changeColorComponent()
    }

    @IBAction func changeColorComponent() {
            
            
            
            // Make sure the program doesn't crash if the controls aren't connected
            if self.redSlider == nil {
                return
            }
            
            let r: CGFloat = CGFloat(self.redSlider!.value)
            let g: CGFloat = CGFloat(self.greenSlider!.value)
            let b: CGFloat = CGFloat(self.blueSlider!.value)
                    
            colorView!.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
        }
}

