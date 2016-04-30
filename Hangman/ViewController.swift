//
//  ViewController.swift
//  Hangman
//
//  Created by Steffen on 25/02/16.
//  Copyright © 2016 Steffen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let hangmanGame = HangManGame()

    // Outlet collection of all game buttons a-z
    @IBOutlet var gameButtons: [UIButton]!
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var triesLabel: UILabel!
    
    @IBAction func buttonA(sender: UIButton) {
        hangmanGame.guessCharacter("a")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonB(sender: UIButton) {
        hangmanGame.guessCharacter("b")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonC(sender: UIButton) {
        hangmanGame.guessCharacter("c")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonD(sender: UIButton) {
        hangmanGame.guessCharacter("d")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonE(sender: UIButton) {
        hangmanGame.guessCharacter("e")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonF(sender: UIButton) {
        hangmanGame.guessCharacter("f")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonG(sender: UIButton) {
        hangmanGame.guessCharacter("g")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonH(sender: UIButton) {
        hangmanGame.guessCharacter("h")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonI(sender: UIButton) {
        hangmanGame.guessCharacter("i")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonJ(sender: UIButton) {
        hangmanGame.guessCharacter("j")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonK(sender: UIButton) {
        hangmanGame.guessCharacter("k")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonL(sender: UIButton) {
        hangmanGame.guessCharacter("l")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonM(sender: UIButton) {
        hangmanGame.guessCharacter("m")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonN(sender: UIButton) {
        hangmanGame.guessCharacter("n")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonO(sender: UIButton) {
        hangmanGame.guessCharacter("o")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonP(sender: UIButton) {
        hangmanGame.guessCharacter("p")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonQ(sender: UIButton) {
        hangmanGame.guessCharacter("q")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonR(sender: UIButton) {
        hangmanGame.guessCharacter("r")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonS(sender: UIButton) {
        hangmanGame.guessCharacter("s")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonT(sender: UIButton) {
        hangmanGame.guessCharacter("t")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonU(sender: UIButton) {
        hangmanGame.guessCharacter("u")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    
    @IBAction func buttonV(sender: UIButton) {
        hangmanGame.guessCharacter("v")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    
    @IBAction func buttonW(sender: UIButton) {
        hangmanGame.guessCharacter("w")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    @IBAction func buttonX(sender: UIButton) {
        hangmanGame.guessCharacter("x")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    
    @IBAction func buttonY(sender: UIButton) {
        hangmanGame.guessCharacter("y")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    
    @IBAction func buttonZ(sender: UIButton) {
        hangmanGame.guessCharacter("z")
        setButtonDisabled(sender)
        updateGameWord()
        updateTriesLeft()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        wordLabel.text = hangmanGame.pickWRandomWord()
        triesLabel.text = "Tries left: \(hangmanGame.maxNumberOfGuesses)"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func returned (segue: UIStoryboardSegue)
    {
        print("reset game")
        hangmanGame.reset()
        wordLabel.text = hangmanGame.pickWRandomWord()
        triesLabel.text = "Tries left: \(hangmanGame.numberOfTriesLeft())"
        resetButtons()
    }

    func setButtonDisabled(button: UIButton)
    {
        button.enabled = false
        button.alpha = 0.65
    }
    
    func resetButtons()
    {
        for button in gameButtons {
            if button.enabled == false
            {
                button.enabled = true
                button.alpha = 1.0
            }
        }
    }
    
    func updateGameWord()
    {
        wordLabel.text = hangmanGame.updateGUI()
        gameWonOrLost()
    }
    
    func updateTriesLeft()
    {
        triesLabel.text = "Tries left: \(hangmanGame.numberOfTriesLeft())"
    }
    
    func gameWonOrLost()
    {
        if hangmanGame.checkIfWonOrLost()
        {
            performSegueWithIdentifier("gameWinScreen", sender: self)
        }
        
        else if hangmanGame.checkIfWonOrLost() == false && hangmanGame.numberOfTriesLeft() == 0 {
            performSegueWithIdentifier("gameLoseScreen", sender: self)
        }
        
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destVC = segue.destinationViewController as! EndGameVC
        if segue.identifier == "gameWinScreen"
        {
            destVC.gameStatusText = "You won the game!"
        }
        
        else if segue.identifier == "gameLoseScreen"
        {
            destVC.gameStatusText = "You lost :( try again"
        }
    }

}

