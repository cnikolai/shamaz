//
//  ViewController.swift
//  shamaz
//
//  Created by Cynthia Nikolai on 9/15/20.
//  Copyright © 2020 Cynthia Nikolai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let pastPrompts = ["Describe your day 2 days ago.","What is your favorite childhood memory?", "What were you doing on Sept 11, 2001?","What did you get for Christmas last year?", "What did you do last summer?","What sports did you play in high school?"]
    private let futurePrompts = ["What would you like to be doing a month from now?","What would you like to be doing one year from now?","What would you like to be doing 5 years from now?", "What are you doing next summer?", "What are you doing tomorrow?","What are you doing this weekend?", "Where would you like to live in 5 years?","Where would you like to live in 10 years?", "Where would you like to retire?", "Who is going to win the superbowl this year?"]
    
    @IBOutlet weak var LetsPlay: UILabel!
    
    @IBAction func generatePastPrompt() {
        if let randomPastPrompt = pastPrompts.randomElement() {
            LetsPlay.text = randomPastPrompt
        }
    }
    
    @IBAction func generateFuturePrompt() {
        if let randomFuturePrompt = futurePrompts.randomElement() {
            LetsPlay.text = randomFuturePrompt
        }
    }
}

