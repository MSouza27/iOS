//
//  ViewController.swift
//  PingxPong
//
//  Created by Magno Souza on 24/08/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var textFieldPlayer1: UITextField!
    @IBOutlet weak var textFieldPlayer2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let matchViewController = segue.destination as? MatchViewController
        
        matchViewController?.player1 = textFieldPlayer1.text ?? ""
        matchViewController?.player2 = textFieldPlayer2.text ?? ""
    }
}

