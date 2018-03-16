//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Michael Murphy on 3/5/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    var responses: [Answer]!
    
    @IBOutlet weak var resultDefinitionLabel: UILabel!
    @IBOutlet weak var resultAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityAnimal()
    }

   
    func calculatePersonalityAnimal() {
        var frequencyOfAnswers: [AnimalType: Int] = [:]
        let responseTypes = responses.map{$0.type}
        for response in responseTypes {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        let mostCommonAnswer = frequencyOfAnswers.sorted {$0.1 > $1.1}.first?.key
        resultAnswerLabel.text = "You are a \(mostCommonAnswer?.rawValue)"
        resultDefinitionLabel.text = mostCommonAnswer?.definition
    }

}
