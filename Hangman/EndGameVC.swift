//
//  EndGameVC.swift
//  Hangman
//
//  Created by Steffen on 30/04/16.
//  Copyright © 2016 Steffen. All rights reserved.
//

import UIKit

class EndGameVC: UIViewController {
    
    var gameStatusText = ""
    @IBOutlet weak var gameStatusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameStatusLabel.text = gameStatusText
        // Do any additional setup after loading the view.
    }
    
    @IBAction func playAgainPressed(sender: AnyObject) {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
