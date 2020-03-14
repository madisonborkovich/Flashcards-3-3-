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
    
    var flashcards = [Flashcard] ()
    var currentIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateFlashcard(question: <#T##String#>, answer: <#T##String#>)
    }

    @IBAction func didTaponFlashcard(_ sender: Any) {
        frontLabel.isHidden = true
        backLabel.isHidden = false
    }
    
    func updateFlashcard(question: String, answer: String) {
        let flashcard = Flashcard (question: question, answer: answer)
        frontLabel.text = flashcard.question
        backLabel.text = flashcard.answer
        Void append(newElement: Flashcard)
        Void append(contentsOf: Sequence)
        flashcards.append(flashcard)
    }
    
}

