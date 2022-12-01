//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cButton(_ sender: UIButton) {
        //print(sender.currentTitle!) tuş alma işlemi
        /*if (sender.titleLabel?.text == "C"){
            playSound(a: "C")
        }
        else if (sender.titleLabel?.text == "D"){
            playSound(a: "D")
        }
        else if (sender.titleLabel?.text == "E"){
            playSound(a: "E")
        }
        else if (sender.titleLabel?.text == "F"){
            playSound(a: "F")
        }
        else if (sender.titleLabel?.text == "G"){
            playSound(a: "G")
        }
        else if (sender.titleLabel?.text == "A"){
            playSound(a: "A")
        }
        else if (sender.titleLabel?.text == "B"){
            playSound(a: "B")
        }*/
        
        playSound(a: sender.currentTitle!)
        
        UIView.animate(withDuration: 0.1) {
            sender.alpha = 0.5
        }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2 ) {
            UIView.animate(withDuration: 0.1) {
                sender.alpha = 1.0
            }
        }
    }
    
    func playSound(a:String) {
        guard let path = Bundle.main.path(forResource: a, ofType:"wav") else {
            return }
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

