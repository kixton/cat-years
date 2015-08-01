//
//  ViewController.swift
//  Cat Years
//
//  Created by Kim Pham on 8/1/15.
//  Copyright (c) 2015 Kim Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var enterAge: UITextField!

    @IBOutlet var catYearAge: UILabel!
    
    @IBAction func calculateAge(sender: AnyObject) {
        var enteredAge = enterAge.text.toInt()
        if enteredAge != nil {
            println("Entered age: \(enterAge.text)")
            var catYears = enteredAge! * 7 // ! unwraps the variable - way of programmer telling Xcode that enteredAge will have a value
            // Swift is Type sensitive language
            println("Cat years: \(catYears)")
            catYearAge.text = "Your cat is \(catYears) in cat years!"
        } else {
            catYearAge.text = "Please enter a number!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

