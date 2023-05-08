//
//  ViewController.swift
//  WordGuess
//
//  Created by Pittu,Sobhareddy on 3/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wordLabel: UILabel!
    
    
    @IBOutlet weak var hintLabel: UILabel!
    
    
    @IBOutlet weak var display: UILabel!
    
    
    @IBOutlet weak var playAgain: UIButton!
    
    
    
    @IBOutlet weak var wordCheck: UITextField!
    
    
    @IBOutlet weak var checkBtn: UIButton!
    
    
    let words = [["Swift","Programming Language"],
                 ["Dhoni","Coolest Cricket Captain"],
                 ["Cat","Animal"],
                 ["BTS","K-Pop Boy Band"],
                 ["Pizza","Food"]]
    var word = ""
    var c = 0
    var letters = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Disabling the check button intially
        
        checkBtn.isEnabled = false
        
        //Assigning the first word to a variable
        
        word = words[c][0]
        
        //Populate the display label with the underscores. The # of underscores is equal to the # of characters in the word.
        
       wordGuess();
              
        //Get the first hint from the array
        
        hintLabel.text = "Hint: "+words[c][1]
              
        //Clear the status label intially.
        
     //   display.text = "LOUIKUJHV"
        
    }
    func wordGuess(){
        //intially making the label empty
        wordLabel.text = " "
        for i in word{
            //assigning _ for every letter in the word
            wordLabel.text! += "_ "
        }
    }

   
    @IBAction func checkBtn(_ sender: UIButton) {
        let letter = wordCheck.text!
        
        //Replace the guessed letter if the letter is part of the word.
        
        letters = letters + letter
        var guess = ""
        for l in word{
            if letters.contains(l.uppercased()){
                guess += "\(l)"
            }
            else{
                guess += "_ "
            }
        }
        wordLabel.text = guess
        wordCheck.text = ""
       
        //check if the label has any more  _ if not then un hide the play agin as the guess is complete
        if !(wordLabel.text!).contains("_"){
            playAgain.isHidden = false
        }
        checkBtn.isEnabled = false
    }
    
    @IBAction func playAgainBtn(_ sender: UIButton) {
        
        //Reset the button to disable initially.
        playAgain.isHidden = true
        //clear the label
        letters = ""
        c += 1
        //if count reaches the end of the array (all the words are guessed sucessfully), then print Congratualtions in the status label.
        if c == words.count{
           // disply.isEnabled = true
            display.text = "Congruations! You are done with the game!"
            //clearing the labels.
            wordCheck.text = ""
            hintLabel.text = ""
            wordLabel.text = ""
            checkBtn.isEnabled = false
            
            
        }
        else{
            //fetch the next word from the array
            word = words[c][0]
            //fetch the hint related to the word
            hintLabel.text = "Hint: "
            hintLabel.text! += words[c][1]
            //Enabling the check button.
            checkBtn.isEnabled = true
            
            display.text = ""
            wordGuess()
        }
    }
    
    @IBAction func textFieldFun(_ sender: Any) {
        
        //Read the data from the text field
        
        var textEnterd = wordCheck.text!;
        
        //Consider only the last character by calling textEntered.last and trimming the white spaces.
        
        textEnterd = String(textEnterd.last ?? " " ).trimmingCharacters(in: .whitespaces)
        
        wordCheck.text = textEnterd.uppercased()
        
        //Check whether the entered text is empty or not to enable check button.
        
        if !textEnterd.isEmpty{
        
            checkBtn.isEnabled = true
            
        }
        
        else{
        
            checkBtn.isEnabled = false
            
        }
    }
}

