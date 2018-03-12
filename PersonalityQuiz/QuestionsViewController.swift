//
//  QuestionsViewController.swift
//  PersonalityQuiz
//
//  Created by Michael Murphy on 3/5/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    
    @IBOutlet weak var multipleStackView: UIStackView!
    
    @IBOutlet weak var multipleLabel1: UILabel!
    
    @IBOutlet weak var multipleLabel2: UILabel!
    
    @IBOutlet weak var multipleLabel3: UILabel!
    
    @IBOutlet weak var multipleLabel4: UILabel!
    
    
    @IBOutlet weak var QuestionLabel: UILabel!
    
    
    
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var SingleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    
    
    @IBOutlet weak var rangedStackView: UIStackView!
    
    @IBOutlet weak var rangedLabel1: UILabel!
    
    
    @IBOutlet weak var rangedLabel2: UILabel!
    
    
    
    
    var questionIndex = 0
    
    
    var questions: [Question] = [
        Question(text: "Which food do you like the most?",
                 type: .single,
                 answers: [
                    Answer(text: "Steak", type: .dog),
                    Answer(text: "Fish", type: .cat),
                    Answer(text: "Carrots", type: .rabbit),
                    Answer(text: "Corn", type: .turtle)
            ]),
        Question(text: "Which activities do you enjoy?",
                 type: .multiple,
                 answers: [
                    Answer(text: "Swimming", type: .turtle),
                    Answer(text: "Sleeping", type: .cat),
                    Answer(text: "Cuddling", type: .rabbit),
                    Answer(text: "Eating", type: .dog)
            ]),
        
        Question(text: "How much do you enjoy car rides?",
                 type: .ranged,
                 answers: [
                    Answer(text: "I dislike them", type: .cat),
                    Answer(text: "I get a little nervous",
                           type: .rabbit),
                    Answer(text: "I barely notice them",
                           type: .turtle),
                    Answer(text: "I love them", type: .dog)
            ])
    ]
    
    func getTextViewData() {

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    func updateUI() {
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        let currentQuestion = questions[questionIndex]
        let currentAnswers = currentQuestion.answers
        
        let totalProgress = Float(questionIndex) / Float(questions.count)
        
        navigationItem.title = "Question #\(questionIndex + 1)"
        QuestionLabel.text = currentQuestion.text
        progressBar.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .single:
            singleStackView.isHidden = false
        case .multiple:
            multipleStackView.isHidden = false
        case .ranged:
            rangedStackView.isHidden = false
        }
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
