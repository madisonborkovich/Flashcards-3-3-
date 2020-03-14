//
//  ViewController.swift
//  Flashcards
//
//  Crean ted by Madison Borkovich on 2/15/20.
//  Copyright © 2020 Madison Borkovich. All rights reserved.
//

import UIKit

struct FlashCard {
    var question: String
    var answer: String
}

class ViewController: UIViewController {

    @IBOutlet weak var frontLabel: UILabel!
    @IBOutlet weak var backLabel: UILabel!
    
    var flashcards = [FlashCard]()
    var currentIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateFlashcard(question: "What year was Penn State University founded?", answer: "1855")
    }

    @IBAction func didTaponFlashcard(_ sender: Any) {
        if frontLabel.isHidden == false {
            frontLabel.isHidden = true
        } else {
            frontLabel.isHidden = false
        }
    }
    
    func updateFlashcard(question: String, answer: String) {
        let flashcard = FlashCard(question: question, answer: answer)
        frontLabel.text = flashcard.question
        backLabel.text = flashcard.answer
        flashcards.append(flashcard)
    }
    
}

