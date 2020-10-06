//
//  ViewController.swift
//  PitchPerfectCHK
//
//  Created by Himakiran Kumar on 07/10/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordButton.isEnabled=false
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text="Recording in progress .."
        stopRecordButton.isEnabled=true
        recordButton.isEnabled=false
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordButton.isEnabled=true
        stopRecordButton.isEnabled=false
        recordingLabel.text="Tap to Record"
    }
}

