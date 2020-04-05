//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var storyLabel: UILabel!
    @IBOutlet var choice1Button: UIButton!
    @IBOutlet var choice2Button: UIButton!

    var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let currentStory = storyBrain.getCurrentStory()

        if currentStory.choice1 == sender.currentTitle {
            storyBrain.nextStory(destination: currentStory.choice1Destination)
        }
        else {
            storyBrain.nextStory(destination: currentStory.choice2Destination)
        }

        updateUI()
    }

    func updateUI() {
        let currentStory = storyBrain.getCurrentStory()

        storyLabel.text = currentStory.title
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice2Button.setTitle(currentStory.choice2, for: .normal)
    }
}
