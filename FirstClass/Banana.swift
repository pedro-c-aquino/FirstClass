//
//  ViewController.swift
//  FirstClass
//
//  Created by user208023 on 4/19/22.
//

import UIKit

class Banana: UIViewController {
    
    
    @IBOutlet weak var labelJokenpo: UILabel!
    
    @IBOutlet weak var labelPlayer: UILabel!
    
    @IBOutlet weak var labelDraw: UILabel!
    
    @IBOutlet weak var labelOpponent: UILabel!
    
    @IBOutlet weak var labelPlayerBoard: UILabel!
    
    @IBOutlet weak var labelDrawBoard: UILabel!
    
    @IBOutlet weak var labelOppBoard: UILabel!
    
    @IBOutlet weak var labelPlayerChoice: UILabel!
    
    @IBOutlet weak var labelOppChoice: UILabel!
    
    var playerScore = 0
    
    var drawScore = 0
    
    var oppScore = 0
    
    var playerChoice = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPaper(_ sender: UIButton) {
        let player = 0
        playerChoice = "Paper"
        labelPlayerChoice.text = playerChoice
        let opp = Int.random(in: 0...2)
        
        switch opp {
        case 0: labelOppChoice.text = "Paper"
        case 1: labelOppChoice.text = "Rock"
        default: labelOppChoice.text = "Scissor"
        }
        
        if player == opp {
            drawScore += 1
            labelDrawBoard.text = String(drawScore)
        }
        else if opp == 1{
            playerScore += 1
            labelPlayerBoard.text = String(playerScore)
            
        }
        else {
            oppScore += 1
            labelOppBoard.text = String(oppScore)
        }
    }
    
    
    @IBAction func buttonRock(_ sender: UIButton) {
        let player = 1
        playerChoice = "Rock"
        labelPlayerChoice.text = playerChoice
        let opp = Int.random(in: 0...2)
        
        switch opp {
        case 0: labelOppChoice.text = "Paper"
        case 1: labelOppChoice.text = "Rock"
        default: labelOppChoice.text = "Scissor"
        }
        
        if player == opp {
            drawScore += 1
            labelDrawBoard.text = String(drawScore)
        }
        else if opp == 0 {
            oppScore += 1
            labelOppBoard.text = String(oppScore)
        }
        else {
            playerScore += 1
            labelPlayerBoard.text = String(playerScore)
        }
    }
    
    
    @IBAction func buttonScissor(_ sender: UIButton) {
        let player = 2
        playerChoice = "Scissor"
        labelPlayerChoice.text = playerChoice
        let opp = Int.random(in: 0...2)
        
        switch opp {
        case 0: labelOppChoice.text = "Paper"
        case 1: labelOppChoice.text = "Rock"
        default: labelOppChoice.text = "Scissor"
        }
        
        if player == opp {
            drawScore += 1
            labelDrawBoard.text = String(drawScore)
        }
        else if opp == 0 {
            playerScore += 1
            labelPlayerBoard.text = String(playerScore)
        }
        else {
            oppScore += 1
            labelOppBoard.text = String(oppScore)
        }
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        labelPlayerChoice.text = "Hi!"
        labelOppChoice.text = "Tap to Play!"
        playerScore = 0
        drawScore = 0
        oppScore = 0
        labelPlayerBoard.text = String(playerScore)
        labelDrawBoard.text = String(drawScore)
        labelOppBoard.text = String(oppScore)
    }
}


	
