//
//  RecordSoundsViewController.swift
//  PitchPerfectCHK
//
//  Created by Himakiran Kumar on 07/10/20.
//

import UIKit
import AVFoundation


class RecordSoundsViewController: UIViewController {

    var audioRecorder: AVAudioRecorder!
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
        
        // code to record audio
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))

        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)

        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
    }
    
    @IBAction func stopRecording(_ sender: Any) {
        recordButton.isEnabled=true
        stopRecordButton.isEnabled=false
        recordingLabel.text="Tap to Record"
        
        // stop recording audio
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
}

