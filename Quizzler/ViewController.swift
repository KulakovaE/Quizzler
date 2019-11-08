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
    
    let quiz = [
        Question(text: "My name is Elena", answer: "True"),
        Question(text: "I have son", answer: "True"),
        Question(text: "I am single", answer: "False"),
        Question(text: "I am 65 kilos", answer: "False"),
        Question(text: "I am blond", answer: "False"),
        Question(text: "I am singer", answer: "True"),
        Question(text: "My shoe number size is 38", answer: "True"),
    ]
    
    var questionNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.progress = 0.0
        updateUI() 
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle// True/False
        //le t actualQuestion = quiz[questionNumber].text
        let actualAnswer = quiz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.systemGreen
        } else {
            sender.backgroundColor = UIColor.systemRed
        }
        
        if questionNumber + 1 <= 6 { // quiz.count
            questionNumber += 1
            
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
}

