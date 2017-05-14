//
//  ViewController.swift
//  Quiz
//
//  Created by Zoltan Kubat on 5/14/17.
//  Copyright © 2017 Zoltan Kubat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        showQuestionLabel.text = questions[indexNumber]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Defining quiz questions
    
    var questions: [String] = [
    
    "What is 7+7?",
    "What is the capital of Serbia?",
    "What is chocolatte made of?"
    
    ]
    
    //Defining quiz answers
    
    var answers: [String] = [
    
    "14",
    "Belgrade",
    "Cacao :)"
    
    ]
    
    // Variable that represents the starting index number of counter for Question and Answer array
    
    var indexNumber: Int = 0
    
    //Text labels
    
    @IBOutlet weak var showQuestionLabel: UILabel!
    @IBOutlet weak var showAnswerLabel: UILabel!
    
    
    //Buttons
    
    @IBAction func nextQuestionButton(_ sender: UIButton) {
        
        indexNumber += 1
        
        if indexNumber == questions.count {
        
        indexNumber = 0
        
        }
        
        showQuestionLabel.text = questions[indexNumber]
        
        
    }
    
    
    @IBAction func showAnswerButton(_ sender: UIButton) {
        
        showAnswerLabel.text = answers[indexNumber]
        
    }
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

