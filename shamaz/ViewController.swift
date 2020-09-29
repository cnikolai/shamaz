//
//  ViewController.swift
//  shamaz
//
//  Created by Cynthia Nikolai on 9/15/20.
//  Copyright © 2020 Cynthia Nikolai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //the prompts from the past
    private let pastPrompts = ["Describe your day 2 days ago.","What is your favorite childhood memory?", "What were you doing on Sept 11, 2001?","What did you get for Christmas last year?", "What did you do last summer?","What sports did you play in high school?"]
    //the prompts for the future
    private let futurePrompts = ["What would you like to be doing a month from now?","What would you like to be doing one year from now?","What would you like to be doing 5 years from now?", "What are you doing next summer?", "What are you doing tomorrow?","What are you doing this weekend?", "Where would you like to live in 5 years?","Where would you like to live in 10 years?", "Where would you like to retire?", "Who is going to win the superbowl this year?"]
    
    //a label that controls the game interface
    @IBOutlet weak var LetsPlay: UILabel!
    //outlets for buttons so that we can control font sizes by code later on
    @IBOutlet weak var pastButton: UIButton!
    @IBOutlet weak var futureButton: UIButton!
 
    //creates resized text fonts for labels to fit in entire button (for smaller screens)
    override func viewDidLoad() {
        super.viewDidLoad()
        pastButton.titleLabel?.minimumScaleFactor = 0.50
        pastButton.titleLabel?.adjustsFontSizeToFitWidth = true
        futureButton.titleLabel?.minimumScaleFactor = 0.50
        futureButton.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    //a function that generates a random prompt from the past and then changes the UILabel display to that prompt
    @IBAction func generatePastPrompt() {
        //an if statement to unwrap the randomPastPrompt
        if let randomPastPrompt = pastPrompts.randomElement() {
            LetsPlay.text = randomPastPrompt
        }
    }
    //a function that generates a random prompt for the future and then changes the UILabel display to that prompt
    @IBAction func generateFuturePrompt() {
        //an if statement to unwrap the randomPastPrompt
        if let randomFuturePrompt = futurePrompts.randomElement() {
            LetsPlay.text = randomFuturePrompt
        }
    }
}

