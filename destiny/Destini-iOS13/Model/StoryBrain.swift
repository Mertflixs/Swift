//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct storyBrain {
    var counter = 0
    
    let Story = [
        story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right."),
        story(title: "You see a tiger.", choice1: "Shout for help.", choice2: "Play dead."),
        story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Check for traps.")
    ]

    func getStory () -> String {
        return Story[counter].title
    }
    
    func getChoice1 () -> String {
        return Story[counter].choice1
    }
    
    func getChoice2 () -> String {
        return Story[counter].choice2
    }
    
    func getCounter () -> Int {
        return counter
    }
    
    mutating func counterPlus () {
        if (counter < Story.count) {
            counter += 1
        }
    }
}
