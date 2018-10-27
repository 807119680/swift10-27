//
//  ViewController.swift
//  swift10-27
//
//  Created by s20171106168 on 2018/10/27.
//  Copyright © 2018 s20171106168. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp:Double = 0
    var operatorFlag = 0
    var temp1:Double = 0

    @IBOutlet weak var Result: UITextField!
    
    @IBAction func Button1(_ sender: Any) {
        Result.text = Result.text! + "1"
    }
    
    @IBAction func Button2(_ sender: Any) {
        Result.text = Result.text! + "2"
    }
    
    @IBAction func Button3(_ sender: Any) {
        Result.text = Result.text! + "3"
    }
    
    @IBAction func ButtonAdd(_ sender: Any) {
        temp = Double(Result.text!)!
        Result.text = ""
        operatorFlag = 1
    }
    
    @IBAction func ButtonSub(_ sender: Any) {
        temp = Double(Result.text!)!
        Result.text = ""
        operatorFlag = 2
    }
    
    @IBAction func ButtonResult(_ sender: Any) {
        if operatorFlag == 1
        {
        temp = temp + Double(Result.text!)!
        Result.text = "\(temp)"
        }
        if operatorFlag == 2
        {
            temp = temp - Double(Result.text!)!
            Result.text = "\(temp)"
        }
    }
    
    @IBAction func ButtonAC(_ sender: Any) {
        Result.text = ""
    }
    @IBAction func ButtonPoint(_ sender: Any) {
        temp = temp + Double(Result.text!)! * 0.1
        temp1 = temp + temp*0.1
        Result.text = "\(temp1)"
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

