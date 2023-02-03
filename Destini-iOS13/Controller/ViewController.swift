//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var choiceTwo: UIButton!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var storyText: UILabel!
    
    var storyBrain = StoryBrain()

    
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        storyBrain.nextStory(userChoice: userAnswer)
        
        updateUI()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        storyText.text = storyBrain.getStoryTitle()
        choiceOne.setTitle(storyBrain.getChoiceOne(), for: .normal)
        choiceTwo.setTitle(storyBrain.getChoiceTwo(), for: .normal)
    }


}

