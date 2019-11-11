//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Darko Kulakov on 2019-11-08.
//  Copyright © 2019 Elena Kulakova. All rights reserved.
//

import Foundation

struct QuizBrain {
    
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

    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            return  true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return "\(quiz[questionNumber].text)"
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 <= quiz.count { // quiz.count
            questionNumber += 1
        } else {
            questionNumber = 0
        }
    }
}
