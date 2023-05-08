//
//  ViewController.swift
//  Pittu_WordGuess
//
//  Created by Pittu,Sobhareddy on 3/29/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    
    
    @IBOutlet weak var totalWordsLabel: UILabel!
    
    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    
    @IBOutlet weak var guessLetterField: UITextField!
    
   
    
    @IBAction func guessLetter(_ sender: UITextField) {
        //Read the data from the text field
        var txt = guessLetterField.text!
        
        txt = String(txt.last ?? " ").trimmingCharacters(in: .whitespaces)
        
        guessLetterField.text = txt
        
        if !txt.isEmpty{
            wordGuess.isEnabled = true
        }
        else{
            wordGuess.isEnabled = false
        }
    }
    
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        let letter = guessLetterField.text!
          
        t+=1
             //Replace the guessed letter if the letter is part of the word.
        hintLabel.isHidden = false
        hintLabel.isEnabled = true
        guessCountLabel.isHidden = false
        guessCountLabel.isEnabled = true
        letters = letters + letter
              var revealedWord = ""
             for i in word{
                 if letters.contains(i.uppercased()){
                     revealedWord += "\(i.uppercased())"
                 }
                 else{
                     revealedWord += "_ "
                 }
             }
        guessCountLabel.text = "You have made \(t) guesses"
             //Assigning the word to displaylabel after a guess
             userGuessLabel.text = revealedWord
             guessLetterField.text = ""
             
             //If the word is guessed correctly, we are enabling play again button and disabling the check button.
             if userGuessLabel.text!.contains("_") == false{
                 playAgain.isHidden = false;
                 displayImage.image = UIImage(named: words[c][2])
                 guessCountLabel.text = "Wow! You have made \(t) guesses to guess the word!"
                 c+=1
                 let r = words.count-c
                 wordsGuessedLabel.text = "Total number of words guessed successfully: \(c)"
                 wordsRemainingLabel.text = "Total number of words remaining in game: \(r)"
                 wordGuess.isEnabled = false;
                 c-=1
             }
        
        if(t == maxNumOfWrongGuesses){
            guessCountLabel.text = "You have used all the available guesses, Please play again"
            wordGuess.isEnabled = false
            hintLabel.isHidden = true
            c-=1
            playAgain.isHidden = false
            playAgain.isEnabled = true
            
        }
        wordGuess.isEnabled = false
       
    }
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        
        t = 0
        c+=1
        let r = words.count - c
        userGuessLabel.isHidden = false
        userGuessLabel.isEnabled = true
        statusLabel.isHidden = true
        playAgain.isEnabled = true
        displayImage.image = UIImage()
        letters = ""
        hintLabel.isHidden = false
        guessCountLabel.text = "You have made \(t) guesses"
        wordsGuessedLabel.text = "Total number of words guessed successfully: \(c)"
        wordsRemainingLabel.text = "Total number of words remaining in game: \(r)"
        
        
        if c==words.count{
            statusLabel.isHidden = false
            statusLabel.text = "Congratulations, You are done, Please start over again"
          //  displayImage.image
            guessCountLabel.isHidden = true
            displayImage.image = UIImage(named: "Done")
             c = -1
            userGuessLabel.isHidden = true
            hintLabel.isHidden = true
            wordsGuessedLabel.text = "Total number of words guessed successfully: 0"
            wordsRemainingLabel.text = "Total number of words remaining in game: \(words.count)"
            
        }
        else{
            word = words[c][0]
            
            hintLabel.text = "Hint: " + words[c][1]
            
            wordGuess.isEnabled = true
            
            wordGuessMethod()
            
            playAgain.isHidden = true
        }
    }
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    @IBOutlet weak var playAgain: UIButton!
    
    
    @IBOutlet weak var wordGuess: UIButton!
    
    let words = [["Swift","Programming Language","Swift"],
                 ["Dhoni","Coolest Cricket Captain","dhoni"],
                 ["Cat","Animal","Cat"],
                 ["BTS","K-Pop Boy Band","BTS"],
                 ["Pizza","Food","Pizza"],
                 ["iPhone","Mobile Phone","iphone"]]
    var word = ""
    var c = 0
    var letters = ""
    var maxNumOfWrongGuesses = 10
    var t = 0
    
    func wordGuessMethod() {
        userGuessLabel.text = ""
        for i in word{
            //assigning _ for every letter in the word
            userGuessLabel.text! += "_ "
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        wordGuess.isEnabled = false
        
        word = words[c][0]
        
        hintLabel.text = "Hint: "+words[c][1]
        
        wordGuessMethod();
        
        statusLabel.isHidden = true
        
        totalWordsLabel.text! += "\(words.count)"
        wordsRemainingLabel.text! += "\(words.count-c)"
        wordsGuessedLabel.text! += "\(c)"
        
        
    }
   
    

}

