//
//  ViewController.swift
//  Quiz
//
//  Created by Eric Di Gioia on 7/9/22.
//
//  NOTE: I did not follow the book code exactly; I wrote the code more concisely than the beginner-oriented book code

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    let questions = [
    "What is 7+7?",
    "What is the capital of Vermont?",
    "What is cognac made from?"
    ]
    
    let answers = [
    "14",
    "Montpelier",
    "Grapes"
    ]
    
    var currentQuestionIndex = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex = currentQuestionIndex==questions.count-1 ? 0 : currentQuestionIndex + 1
        questionLabel.text = questions[currentQuestionIndex]
        answerLabel.text = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = answers[currentQuestionIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }
}

