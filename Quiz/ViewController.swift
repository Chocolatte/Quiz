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

    var questions: [String] = [
    
    "What is 7+7?",
    "What is the capital of Serbia?",
    "What is chocolatte made of?"
    
    ]
    
    var answers: [String] = [
    
    "14",
    "Belgrade",
    "Cacao :)"
    
    ]
    
    var indexNumber: Int = 0
    
    
    
    @IBOutlet weak var showQuestionLabel: UILabel!
    @IBOutlet weak var showAnswerLabel: UILabel!
    
    
    
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

