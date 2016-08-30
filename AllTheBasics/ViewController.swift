//
//  ViewController.swift
//  AllTheBasics
//
//  Created by James Campagno on 6/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func averageIsAbove75(a: Double, b: Double, c: Double) -> Bool {
        let check: Double = (a + b + c) / 3
        switch check > 75.0 {
        case true:
            return true
        default:
            return false
        }
    }

    func passwordCombo(username: String, password: Int) -> String {
        //'Jerry', 'Elaine', or 'Michael'
        var name: Bool = false
        var code: Bool = false
        switch username {
        case "Jerry":
            name = true
        case "Elaine":
            name = true
        case "Michael":
            name = true
        default:
            name = false
        }
        switch password%3 == 0 {
        case true:
            code = true
        default:
            code = false
        }
        switch name && code {
        case true:
            return "Welcome!"
        default:
            return "Access Denied"
        }
    }

    func numberGenerator(num1: String, num2: Float) -> Float {
        var num1Float: Float = 0
        var part1 = false
        var part2 = false
        switch num1 {
        case "1":
            num1Float = 1.0
            part1 = true
        case "2":
            num1Float = 2.0
            part1 = true
        case "3":
            num1Float = 3.0
            part1 = true
        case "4":
            num1Float = 4.0
            part1 = true
        case "5":
            num1Float = 5.0
            part1 = true
        default:
            part1 = false
        }
        switch num2 {
        case 10.5...15:
            part2 = true
        case 20.0...30.5:
            part2 = true
        default:
            part2 = false
        }
        switch part1 && part2 {
        case true:
            return num1Float * num2
        default:
            return 0.0
        }
        
        
    }

}