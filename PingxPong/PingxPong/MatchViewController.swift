//
//  MatchViewController.swift
//  PingxPong
//
//  Created by Magno Souza on 24/08/24.
//

import UIKit

class MatchViewController: UIViewController {

    @IBOutlet weak var labelPlayer1: UILabel!
    @IBOutlet weak var labelPlayer2: UILabel!
    @IBOutlet weak var labelScore1: UILabel!
    @IBOutlet weak var labelScore2: UILabel!

    @IBOutlet weak var textViewScores: UITextView!
    
    
    
    var player1: String = ""
    var player2: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelPlayer1.text = player1
        labelPlayer2.text = player2

    }
    
    @IBAction func addScore1(_ sender: Any) {
        let score1String = labelScore1.text ?? ""
        let score1 = Int(score1String) ?? 0
        labelScore1.text = "\(score1 + 1)"
    }
    

    @IBAction func addScore2(_ sender: Any) {
        let score2String = labelScore2.text ?? ""
        let score2 = Int(score2String) ?? 0
        labelScore2.text = "\(score2 + 1)"
    }
    
    
    @IBAction func saveScore(_ sender: Any) {
        let score1 = Int(labelScore1.text ?? "") ?? 0
        let score2 = Int(labelScore2.text ?? "") ?? 0
        
        textViewScores.text += "\(labelPlayer1.text ?? "")(\(score1)) x (\(score2)) \(labelPlayer2.text ?? "")\n"
        
        labelScore1.text = "0"
        labelScore2.text = "0"
       
    }
}
