//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    let story = "You see a fork in the road"
    let choice1 = "Take a left."
    let choice2 = "Take a right."
    
    var brainStory = storyBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func clickedButton(_ sender: UIButton) {
        let answer = sender.currentTitle!
        
        if (brainStory.getCounter() + 1 < brainStory.Story.count) {
            if (answer == brainStory.getChoice1()) {
                brainStory.counterPlus()
                updateUI()
            } else {
                brainStory.counterPlus()
                updateUI()
            }
        }
        else {
            print("bitti kanks")
            storyLabel.text = "Bitti"
            choice1Button.isHidden = true
            choice2Button.isHidden = true
        }
    }
    
    @objc func updateUI() {
        storyLabel.text = brainStory.getStory()
        choice1Button.setTitle(brainStory.getChoice1(), for: .normal)
        choice2Button.setTitle(brainStory.getChoice2(), for: .normal)
    }
    
    @objc func lastUpdate() {
        
    }
    
}

