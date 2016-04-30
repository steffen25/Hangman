//
//  HangmanGameLogic.swift
//  Hangman
//
//  Created by Steffen on 25/02/16.
//  Copyright © 2016 Steffen. All rights reserved.
//

import Foundation

class HangManGame {
    var maxNumberOfGuesses = 10
    var numberOfGuesses = 0
    var guess: Character = " "
    var wordlist: [String] = [
        "copenhagen",
        "lygten",
        "apple"
    ]
    var allGuesses: [Character] = []
    var gameWord = ""
    var maskedWord: [Character] = []
    
    func pickWRandomWord() -> String
    {
        let randomIndex = Int(arc4random_uniform(UInt32(wordlist.count)))
        
        gameWord = wordlist[randomIndex]
        
        
        for char: Character in Array(gameWord.characters)
        {
            if char == " "
            {
                maskedWord.append(" ")
            }
            else
            {
                maskedWord.append("*")
            }
        }

        return String(maskedWord)
    }
    
    func guessCharacter(c: Character)
    {
        guess = c
        allGuesses.append(c)
        
        let gamewordArray = Array(gameWord.characters)
        
        if checkIfWonOrLost()
        {
            return
        }
        
        for (index, element) in maskedWord.enumerate()
        {
            if guess == gamewordArray[index]
            {
                print("found match at \(index): \(gamewordArray[index])")
                maskedWord[index] = guess
            }
        }
        numberOfGuesses += 1

        print(maskedWord)
        print(numberOfGuesses)
    }
    
    func updateGUI() -> String
    {
        return String(maskedWord)
    }
    
    func checkIfWonOrLost() -> Bool
    {
        if numberOfGuesses <= maxNumberOfGuesses

        {
            return maskedWord == Array(gameWord.characters)
        }
        
        return false

    }
    
    func numberOfTriesLeft() -> Int
    {
        return maxNumberOfGuesses - numberOfGuesses
    }
    
    func reset()
    {
        numberOfGuesses = 0
        guess = " "
        maskedWord = []
    }
    
    
}
