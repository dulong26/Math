//
//  ViewController.swift
//  Math
//
//  Created by Tung on 4/11/17.
//  Copyright © 2017 silverpear. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRandom()
    }
    
    func setRandom() {
        let random1 = Int(arc4random_uniform(5)) + 1
        let random2 = Int(arc4random_uniform(5)) + 1
        print(random1)
        print(random2)
        
    }

}

