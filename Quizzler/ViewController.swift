//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//
//  Edited by Hammoud Hammoud on 14/11/2017

import UIKit
import GameplayKit

class ViewController: UIViewController {

    let allQuestions = QuestionBank()
    let numQuestions : Int = 15
    var pickedAnswer : Bool = false
    var currentQuestion : Question! = nil
    var questionNumber : Int = 0
    var score : Int = 0
    var shuffled = [Question]()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Shuffle the questions
        shuffled = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: allQuestions.list) as! [Question]
        scoreLabel.text = "Score: 0"
        nextQuestion()
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        
        checkAnswer()
        questionNumber += 1
        nextQuestion()


    }
    
    
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber+1)/\(numQuestions)"
        progressBar.frame.size.width = ((view.frame.size.width) / 15) * CGFloat(questionNumber+1)
    }
    

    func nextQuestion() {
        if questionNumber < numQuestions {
            currentQuestion = shuffled[questionNumber]
            questionLabel.text = currentQuestion.questionText
            updateUI()
        }
        else {
            scoreLabel.text = "Score: \(score)"
            let alert = UIAlertController(title: "Congrats! You scored \(score)!", message: "Would you like to try again?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { (UIAlertAction) in
                self.startOver()
            })
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer() {
        if pickedAnswer == currentQuestion.answer {
            ProgressHUD.showSuccess("Correct!")
            score += 100
        }
        else {
            ProgressHUD.showError("Wrong!")
        }
    }
    
    
    func startOver() {
        score = 0
        questionNumber = 0
        shuffled = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: allQuestions.list) as! [Question]
        nextQuestion()
    }
    

    
}
