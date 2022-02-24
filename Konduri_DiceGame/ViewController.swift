//
//  ViewController.swift
//  Konduri_DiceGame
//
//  Created by Konduri,Sai Deep on 2/24/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inp1: UITextField!
    
    
    @IBOutlet weak var inp2: UITextField!
    
    
    
    @IBAction func onRoll(_ sender: Any) {
        reset();
        let firstPerson = inp1.text!;
        let secondPerson = inp2.text!;
        
        let p1Dice:Int = createRandomNum()
        let p2Dice:Int = createRandomNum()
        
        roll1.text = "\(firstPerson) roll is \(p1Dice)"
        roll2.text = "\(secondPerson) roll is \(p2Dice)"
        
        if(p1Dice > p2Dice) {
            winnerMessage.text = "\(firstPerson) won the game"
        } else if(p2Dice > p1Dice){
            winnerMessage.text = "\(secondPerson) won the game"
        } else {
            winnerMessage.text = "The game is tie"
        }
        
    }
    
    
    
    
    @IBOutlet weak var roll1: UILabel!
    
    
    
    @IBOutlet weak var roll2: UILabel!
    
    
    
    @IBOutlet weak var winnerMessage: UILabel!
    
    func reset() {
        roll1.text = "";
        roll2.text = "";
        winnerMessage.text = "";
    }
    
    func createRandomNum() -> Int {
        return Int.random(in: 0..<6)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

