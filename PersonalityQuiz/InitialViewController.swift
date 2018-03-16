//
//  ViewController.swift
//  PersonalityQuiz
//
//  Created by Michael Murphy on 3/1/18.
//  Copyright © 2018 John Hersey High School. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    
    var segueIdentifier = "mainScreenToNext"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func beginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: segueIdentifier, sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func unwindToMainScreen(forSegue: UIStoryboardSegue) {
        
    }
}

