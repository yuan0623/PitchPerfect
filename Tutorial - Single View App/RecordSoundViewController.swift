//
//  RecordSoundViewController.swift
//  Tutorial - Single View App
//
//  Created by Jacque Crossett on 3/25/19.
//  Copyright © 2019 Jacque Crossett. All rights reserved.
//

import UIKit
import AVFoundation
class RecordSoundViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stopRecordingButton.isEnabled = false
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear is called")
    }

    //var audioRecorder:AVAudioRecorder
    @IBAction func recordAudioNew(_ sender: Any) {
        //print("record button is pressed")
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
        recordingLabel.text = "Recording in Progress"
        
    }
    @IBAction func stepRecording(_ sender: Any) {
    //print("stopRecord button is pressed")
        recordButton.isEnabled = true
        stopRecordingButton.isEnabled = false
    }
}

