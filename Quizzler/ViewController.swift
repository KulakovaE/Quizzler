//
//  ViewController.swift
//  Quizzler
//
//  Created by Darko Kulakov on 2019-11-08.
//  Copyright © 2019 Elena Kulakova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [ ["Bear has two legs.", "True" ],
                 ["2 + 2 = 3", "False"],
                 ["My son name is Kristofer.", "True"]
    ]
    
    var questionNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle// True/False
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Not right")
        }
        
        if questionNumber + 1 <= 2 { // quiz.count
            questionNumber += 1
            updateUI()
        } else {
            questionNumber = 0
        }
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
}

