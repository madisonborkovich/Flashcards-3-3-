//
//  CreationViewController.swift
//  Flashcards
//
//  Created by Madison Borkovich on 3/7/20.
//  Copyright © 2020 Madison Borkovich. All rights reserved.
//

import UIKit

class CreationViewController: UIViewController {
    @IBOutlet weak var questionTextField: UITextField!
    @IBOutlet weak var answerTextField: UITextField!
    var flashcardsController: ViewController!
    @IBAction func didTapOnButton(_ sender: Any) {
        dismiss (animated: true)
    }
    
    @IBAction func didTapOnNext(_ sender: Any) {
    }
    @IBAction func didTapOnPrev(_ sender: Any) {
    }
    @IBAction func didTapOnDone(_ sender: Any) {
        let questionText = questionTextField.text
        let answerText = answerTextField.text
        flashcardsController.updateFlashcard(question: questionText!, answer: answerText!)
        dismiss(animated: true) 
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
