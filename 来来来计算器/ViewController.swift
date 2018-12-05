//
//  ViewController.swift
//  来来来计算器
//
//  Created by s20171106185 on 2018/10/27.
//  Copyright © 2018 s20171106185. All rights reserved.
//

import UIKit

class Stack
{
    var tmp = 0
}

class ViewController: UIViewController {
    @IBOutlet weak var result: UITextField!
    var temp:Double = 0
    var tempflag = 0
    var deletenum:Int = 0
    var m_temp:Double = 0
    var N = 0
    @IBAction func button9(_ sender: Any) {
        if(tempflag == 5)
        {
            result.text = ""
            tempflag = 0
        }
        if(N>0)
        {
            result.text = ""
            result.text = result.text! + "9"
        }
        else
        {
            result.text = result.text! + "9"
        }
    }
    @IBAction func button8(_ sender: Any) {
        if(tempflag == 5)
        {
            result.text = ""
            tempflag = 0
        }
        if(N>0)
        {
            result.text = ""
            result.text = result.text! + "8"
        }
        else
        {
            result.text = result.text! + "8"
        }
    }
    @IBAction func button7(_ sender: Any) {
        if(tempflag == 5)
        {
            result.text = ""
            tempflag = 0
        }
        if(N>0)
        {
            result.text = ""
            result.text = result.text! + "7"
        }
        else
        {
            result.text = result.text! + "7"
        }
    }
    @IBAction func button6(_ sender: Any) {
        if(tempflag == 5)
        {
            result.text = ""
            tempflag = 0
        }
        if(N>0)
        {
            result.text = ""
            result.text = result.text! + "6"
        }
        else
        {
            result.text = result.text! + "6"
        }
    }
    @IBAction func button5(_ sender: Any) {
        if(tempflag == 5)
        {
            result.text = ""
            tempflag = 0
        }
        if(N>0)
        {
            result.text = ""
            result.text = result.text! + "5"
        }
        else
        {
            result.text = result.text! + "5"
        }
    }
    @IBAction func button4(_ sender: Any) {
        if(tempflag == 5)
        {
            result.text = ""
            tempflag = 0
        }
        if(N>0)
        {
            result.text = ""
            result.text = result.text! + "4"
        }
        else
        {
            result.text = result.text! + "4"
        }
    }
    @IBAction func button3(_ sender: Any) {
        if(tempflag == 5)
        {
            result.text = ""
            tempflag = 0
        }
        if(N>0)
        {
            result.text = ""
            result.text = result.text! + "3"
        }
        else
        {
            result.text = result.text! + "3"
        }
    }
    @IBAction func button2(_ sender: Any) {
        if(tempflag == 5)
        {
            result.text = ""
            tempflag = 0
        }
        if(N>0)
        {
            result.text = ""
            result.text = result.text! + "2"
        }
        else
        {
            result.text = result.text! + "2"
        }
    }
    @IBAction func button1(_ sender: Any) {
        if(tempflag == 5)
        {
            result.text = ""
            tempflag = 0
        }
        if(N>0)
        {
            result.text = ""
            result.text = result.text! + "1"
        }
        else
        {
            result.text = result.text! + "1"
        }
    }
    @IBAction func button0(_ sender: Any) {
        if(tempflag == 5)
        {
            result.text = ""
            tempflag = 0
        }
        if(N>0)
        {
            result.text = ""
            result.text = result.text! + "0"
        }
        else
        {
            result.text = result.text! + "0"
        }
    }
    @IBAction func buttoncoid(_ sender: Any) {
        result.text = result.text! + "."
    }
    @IBAction func buttonadd(_ sender: Any) {
        tempflag = 1
        temp = temp + Double(result.text!)!
        m_temp = m_temp + Double(result.text!)!
        if(N>0)
        {
            result.text = "\(m_temp)"
        }
        else
        {
            result.text = ""
        }
        N=N+1
    }
    @IBAction func buttonsub(_ sender: Any) {
        tempflag = 2
        if(N>0)
        {
            temp = temp - Double(result.text!)!
            m_temp = m_temp - Double(result.text!)!
            result.text = "\(m_temp)"
        }
        else
        {
            temp = Double(result.text!)!
            m_temp = Double(result.text!)!
            result.text = ""
        }
        N=N+1
    }
    @IBAction func buttonride(_ sender: Any) {
        tempflag = 3
        if(N>0)
        {
            temp = temp * Double(result.text!)!
            m_temp = m_temp * Double(result.text!)!
            result.text = "\(m_temp)"
        }
        else
        {
            temp = Double(result.text!)!
            m_temp = Double(result.text!)!
            result.text = ""
        }
        N=N+1
    }
    @IBAction func buttondivide(_ sender: Any) {
        tempflag = 4
        if(N>0)
        {
            temp = temp / Double(result.text!)!
            m_temp = m_temp / Double(result.text!)!
            result.text = "\(m_temp)"
        }
        else
        {
            temp = Double(result.text!)!
            m_temp = Double(result.text!)!
            result.text = ""
        }
        N=N+1
    }
    @IBAction func buttonac(_ sender: Any) {
        result.text = ""
        temp = 0
        m_temp = 0
        N = 0
    }
    @IBAction func buttonneg(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
        temp = -temp
        result.text = "\(temp)"
    }
    @IBAction func buttondelete(_ sender: Any) {
        temp = Double (result.text!)!
        deletenum = Int (temp)
        deletenum = deletenum/10
        temp = Double (deletenum)
        result.text = "\(deletenum)"
    }
    @IBAction func buttonresult(_ sender: Any) {
        if (tempflag == 1)
        {
            temp = temp + Double(result.text!)!
            result.text = "\(temp)"
        }
        if (tempflag == 2)
        {
            temp = temp - Double(result.text!)!
            result.text = "\(temp)"
        }
        if (tempflag == 3)
        {
            temp = temp * Double(result.text!)!
            result.text = String(format:"%.6f",temp)
        }
        if (tempflag == 4)
        {
            temp = temp / Double(result.text!)!
            result.text = "\(temp)"
        }
        tempflag = 5
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


                                         }



