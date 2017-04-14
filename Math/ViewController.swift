//
//  ViewController.swift
//  Math
//
//  Created by Tung on 4/11/17.
//  Copyright © 2017 silverpear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var lbNum1: UILabel!
//    @IBOutlet weak var lbNum2: UILabel!
    
    @IBOutlet weak var lbNum1: UILabel!
    @IBOutlet weak var lbNum2: UILabel!
    @IBOutlet weak var lbSign: UILabel!
    
    @IBOutlet weak var btResult1: UIButton!
    @IBOutlet weak var btResult2: UIButton!
    @IBOutlet weak var btResult3: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRandom()
    }
    
    @IBAction func btAction(_ sender: UIButton) {
        setRandom()
    }
    
    
    
    
    //Choose random numbers
    func setRandom() {
        let random1 = Int(arc4random_uniform(5)) + 1
        let random2 = Int(arc4random_uniform(5)) + 1
        lbNum1.text = String(random1)
        lbNum2.text = String(random2)
        
        let randomSign = Int(arc4random_uniform(2))
        if randomSign == 0 {
            lbSign.text = "-"
        } else {
            lbSign.text = "+"
        }
        
        setResult(num1: random1, num2: random2)
        
    }
    
    //Set results on buttons
    func setResult(num1: Int, num2: Int) {
        
        var rand1, rand2, rand3: Int
        rand1 = Int(arc4random_uniform(3))
        repeat {
            rand2 = Int(arc4random_uniform(3))
            rand3 = Int(arc4random_uniform(3))
        } while (rand2 == rand1)||(rand3 == rand2)||(rand1 == rand3)
        
        var result = [String(num1), String(num2), String(sum(p1: num1, p2: num2))]
        
        btResult1.setTitle(result[rand1], for: .normal)
        btResult2.setTitle(result[rand2], for: .normal)
        btResult3.setTitle(result[rand3], for: .normal)
    }
    
    //Calculation sum
    func sum(p1: Int, p2: Int) -> Int {
        return (p1 + p2)
    }

}

