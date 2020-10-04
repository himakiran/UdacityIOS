//
//  ViewController.swift
//  PitchPerfectCHK
//
//  Created by Himakiran Kumar on 04/10/20.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var recordLabel: UILabel!
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordLabel.text="recording.."
    }
}
    
    
