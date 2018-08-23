//
//  ViewController.swift
//  Dicee
//
//  Created by Jonathan Lo on 2018-03-10.
//  Copyright © 2018 Jonathan Lo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // containers to store numbers from random generator
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        updateDiceImages()
        
//        let square = UIView(frame: CGRect(x:0, y: 0, width: 50, height: 50)) comment
//        let square = UIView(frame: CGRect(x:self.view.frame.width/2 - 25, y: self.view.frame.height/2 - 25, width: 50, height: 50))
//        square.backgroundColor = UIColor.red
//        self.view.addSubview(square)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDiceImages()
        
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

