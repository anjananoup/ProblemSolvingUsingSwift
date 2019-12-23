//
//  ViewController.swift
//  ProblemSolving
//
//  Created by Anjan on 12/20/19.
//  Copyright © 2019 Anjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var solution: Solution?
    
    @IBAction func solveProblemAction(_ sender: UIButton) {
        solution = Leet11()
        solution?.executeMain()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Program Loaded...")
    }


}

