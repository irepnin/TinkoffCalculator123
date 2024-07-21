//
//  ViewController.swift
//  TinkoffCalculator
//
//  Created by Иван on 14.07.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var fraction: UIButton!
    @IBOutlet weak var zero: UIButton!
    @IBOutlet weak var equals: UIButton!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var division: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var multiplication: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    @IBOutlet weak var minus: UIButton!
    @IBOutlet weak var erase: UIButton!
    @IBOutlet weak var plus: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fraction.setTitle(",", for: .normal)
        zero.setTitle("0", for: .normal)
        equals.setTitle("=", for: .normal)
        one.setTitle("1", for: .normal)
        two.setTitle("2", for: .normal)
        three.setTitle("3", for: .normal)
        four.setTitle("4", for: .normal)
        five.setTitle("5", for: .normal)
        six.setTitle("6", for: .normal)
        seven.setTitle("7", for: .normal)
        eight.setTitle("8", for: .normal)
        nine.setTitle("9", for: .normal)
        erase.setTitle("c", for: .normal)
        plus.setTitle("+", for: .normal)
        minus.setTitle("-", for: .normal)
        multiplication.setTitle("Х", for: .normal)
        division.setTitle("/", for: .normal)
    }
    
    @IBAction func fractionTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func zeroTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func equalTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func oneTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func twoTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    
    @IBAction func threeTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func divisionTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func fourTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func fiveTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func sixTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func multiplicationTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func sevenTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func eightTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func nineTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func minusTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func eraseTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
    @IBAction func plusTapped(_ sender: UIButton) {
        if let buttonTitle = sender.currentTitle {
            print(buttonTitle)
        }
    }
}


