//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Sergio Martin on 4/28/19.
//  Copyright © 2019 Sergio Martin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var audioRecorder: AVAudioRecorder!
    
    @IBOutlet weak var userActionLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setRecordView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setRecordView() {
        userActionLabel.text = "Tap To Record"
        recordButton.isHidden = false
        stopButton.isHidden = true
    }
    
    func setStopView() {
        userActionLabel.text = "Recording ... Tap To Stop Recoring"
        recordButton.isHidden = true
        stopButton.isHidden = false
    }
    
    
    @IBAction func onRecordButtonPress(_ sender: Any) {
        setStopView()
        
        
//        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
//        let recordingName = "recordedVoice.wav"
//        let pathArray = [dirPath, recordingName]
//        let filePath = URL(string: pathArray.joined(separator: "/"))
//
//        let session = AVAudioSession.sharedInstance()
//        try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)
//
//        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
//        audioRecorder.isMeteringEnabled = true
//        audioRecorder.prepareToRecord()
//        audioRecorder.record()
    }
    
    @IBAction func onStopButtonPress(_ sender: AnyObject) {
        
//        audioRecorder.stop()
//        let audioSession = AVAudioSession.sharedInstance()
//        try! audioSession.setActive(false)
        
        performSegue(withIdentifier: "stopRecording", sender: sender)
    }
    
}

