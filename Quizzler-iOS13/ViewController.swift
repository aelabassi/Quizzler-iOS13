//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["First - Meta is founded by Mark Zuck?", "True"],
        ["Second - Covid hits the world (worldwide spread) in 2018?", "False"],
        ["Third - Twitter is taken by Elon Musk?", "True" ],
        ["Forth - Linus is the first to create Linux OS?", "True"]
    ]
    
    var currentQuestionIndex = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }

    
    @IBAction func answerButton(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let actualAnswer = quiz[currentQuestionIndex][1]
        if userAnswer == actualAnswer {
            print("You got it Right pozer")
        }
        if currentQuestionIndex + 1 < quiz.count {
        currentQuestionIndex += 1
        }else{
            currentQuestionIndex = 0
        }
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quiz[currentQuestionIndex][0]
        
    }
    
}

