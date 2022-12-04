//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation
var audio:AVPlayer!

class ViewController: UIViewController {
    
    let softTime = 30
    let mediumTime = 42
    let hardTime = 72
    
    var secondsRemaining = 60
    var seccondPassed = 0
    var totalTime = 0
    var timer = Timer()

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!

    @IBAction func timerButton(_ sender: UIButton) {
        //print(sender.currentTitle!)
        titleLabel.text = "How do you like your eggs? Yumurtanız nasıl olsun efendim?"
        progressView.progress = 0.0
        seccondPassed = 0
        if (sender.currentTitle == "Soft"){
            print("Soft")
            totalTime = softTime
            updateTimer()
        }
        else if (sender.currentTitle == "Medium"){
            print("Medium")
            totalTime = mediumTime
            updateTimer()
        }
        else if (sender.currentTitle == "Hard"){
            print("Hard")
            totalTime = hardTime
            updateTimer()
        }
    }
    
    @objc func updateTimer(){
        
        timer.invalidate()
        
        if seccondPassed < totalTime {
            let percentProgress = Float(seccondPassed) / Float(totalTime)
            progressView.progress = percentProgress
            seccondPassed += 1
        }
        else if seccondPassed == totalTime
        {
            playSound()
            seccondPassed += 1
        }
        else
        {
            titleLabel.text = "Done !"
        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func playSound(){
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        audio = AVPlayer.init(url: url!)
        audio.play()
    }
}
