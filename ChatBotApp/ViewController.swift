//
//  ViewController.swift
//  ChatBotApp
//
//  Created by ibrahim erginoglu on 23.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var responseLabel: UILabel!
    @IBOutlet weak var userInputTextField: UITextField!

       @IBAction func sendButtonPressed(_ sender: UIButton) {
           let userInput = userInputTextField.text ?? ""
           processInput(userInput)
           userInputTextField.text = ""
       }

       override func viewDidLoad() {
           super.viewDidLoad()
           responseLabel.text = "Hi! How can I help you?"
       }

      

    
    
    func processInput(_ input: String) {
            var response = ""
            
            // Girdiye göre Chatbot cevapları
            if input.lowercased().contains("hello") {
                response = "Hello! How are you?"
            } else if input.lowercased().contains("how are you") {
                response = "I'm just a bot, but I'm doing great!"
            } else if input.lowercased().contains("bye") {
                response = "Goodbye! Have a great day!"
            } else {
                response = "Sorry, I don't understand that."
            }

            // Chatbot cevabını label'a yazdır
            responseLabel.text = response
        }
    
}

