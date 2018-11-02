//
//  ViewController.swift
//  来来来计算器
//
//  Created by s20171106185 on 2018/10/27.
//  Copyright © 2018 s20171106185. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var result: UITextField!
    var temp:Double = 0
    var judge:Int = 0
    var deletenum:Int = 0
    @IBAction func button9(_ sender: Any) {
        result.text = result.text! + "9"
    }
    @IBAction func button8(_ sender: Any) {
        result.text = result.text! + "8"
    }
    @IBAction func button7(_ sender: Any) {
        result.text = result.text! + "7"
    }
    @IBAction func button6(_ sender: Any) {
        result.text = result.text! + "6"
    }
    @IBAction func button5(_ sender: Any) {
        result.text = result.text! + "5"
    }
    @IBAction func button4(_ sender: Any) {
        result.text = result.text! + "4"
    }
    @IBAction func button3(_ sender: Any) {
        result.text = result.text! + "3"
    }
    @IBAction func button2(_ sender: Any) {
        result.text = result.text! + "2"
    }
    @IBAction func button1(_ sender: Any) {
        result.text = result.text! + "1"
    }
    @IBAction func button0(_ sender: Any) {
        result.text = result.text! + "0"
    }
    @IBAction func buttoncoid(_ sender: Any) {
        result.text = result.text! + "."
    }
    @IBAction func buttonadd(_ sender: Any) {
        temp = Double (result.text!)!
        result.text = ""
        judge = 1
    }
    @IBAction func buttonsub(_ sender: Any) {
        temp = Double (result.text!)!
        result.text = ""
        judge = 2
    }
    @IBAction func buttonride(_ sender: Any) {
        temp = Double (result.text!)!
        result.text = ""
        judge = 3
    }
    @IBAction func buttondivide(_ sender: Any) {
        temp = Double (result.text!)!
        result.text = ""
        judge = 4
    }
    @IBAction func buttonac(_ sender: Any) {
        result.text = ""
        temp = 0
    }
    @IBAction func buttondelete(_ sender: Any) {
        temp = Double (result.text!)!
        deletenum = Int (temp)
        deletenum = deletenum/10
        temp = Double (deletenum)
        result.text = "\(deletenum)"
    }
    @IBAction func buttonresult(_ sender: Any) {
        if judge == 1{
            temp = temp + Double(result.text!)!
            result.text = "\(temp)"
        }
        else if judge == 2{
            temp = temp - Double(result.text!)!
            result.text = "\(temp)"
        }
        else if judge == 3{
            temp = temp * Double(result.text!)!
            result.text = "\(temp)"
        }
        else if judge == 4{
            temp = temp / Double(result.text!)!
            result.text = "\(temp)"
        }
        else{
            result.text = "\(temp)"
        }
        func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

}
