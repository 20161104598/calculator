//
//  ViewController.swift
//  calculator
//
//  Created by zyh on 2018/9/26.
//  Copyright © 2018年 zyh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var result: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    var result_1 = ""
    var re = 1 //判断是否是result的第一个
    var add = 0 // 判断符号次数
    var number = 0 //判断运算符
    @IBAction func number1(_ sender: Any) {
        if re == 1{
            result.text = "1"
            re = 0
        }
        else{
            result.text = result.text! + "1"
        }
        
    }
    
    @IBAction func number2(_ sender: Any) {
        if re == 1{
            result.text = "2"
            re = 0
        }
        else{
            result.text = result.text! + "2"
        }
    }
    @IBAction func number3(_ sender: Any) {
        if re == 1{
            result.text = "3"
            re = 0
        }
        else{
            result.text = result.text! + "3"
        }
    }
    @IBAction func number4(_ sender: Any) {
        if re == 1{
            result.text = "4"
            re = 0
        }
        else{
            result.text = result.text! + "4"
        }
    }
    @IBAction func number5(_ sender: Any) {
        if re == 1{
            result.text = "5"
            re = 0
        }
        else{
            result.text = result.text! + "5"
        }
    }
    @IBAction func number6(_ sender: Any) {
        if re == 1{
            result.text = "6"
            re = 0
        }
        else{
            result.text = result.text! + "6"
        }
    }
    @IBAction func number7(_ sender: Any) {
        if re == 1{
            result.text = "7"
            re = 0
        }
        else{
            result.text = result.text! + "7"
        }
    }
    @IBAction func number8(_ sender: Any) {
        if re == 1{
            result.text = "8"
            re = 0
        }
        else{
            result.text = result.text! + "8"
        }
    }
    @IBAction func number9(_ sender: Any) {
        if re == 1{
            result.text = "9"
            re = 0
        }
        else{
            result.text = result.text! + "9"
        }
    }
    @IBAction func number0(_ sender: Any) {
        if re == 1{
            result.text = "0"
        }
        else{
            result.text = result.text! + "0"
        }
    }
    @IBAction func add(_ sender: Any) {
        if add == 1
        {
            
            equal(add)
            number = 1
        }
        else{
            if result.text == "0"
            {
                result.text = "0"
            }
            else
            {
                result_1 = result.text!
                result.text = result_1
                number = 1
                re = 1
                add = 1
            }
        }
    }

    @IBAction func subtract(_ sender: Any) {
        if add == 1
        {
            
            equal(add)
            number = 2
        }
        else{
            if result.text == "0"
            {
                result.text = "0"
            }
            else
            {
                result_1 = result.text!
                result.text = result_1
                number = 2
                re = 1
                add = 1
            }
        }
    }
    @IBAction func multiply(_ sender: Any) {
        if add == 1
        {
            
            equal(add)
            number = 3
        }
        else{
            if result.text == "0"
            {
                result.text = "0"
            }
            else
            {
                result_1 = result.text!
                result.text = result_1
                number = 3
                re = 1
                add = 1
            }
        }
    }
    @IBAction func divide(_ sender: Any) {
        if add == 1
        {
            
            equal(add)
            number = 4
        }
        else{
            if result.text == "0"
            {
                result.text = "0"
            }
            else
            {
                result_1 = result.text!
                result.text = result_1
                number = 4
                re = 1
                add = 1
            }
        }
    }
    @IBAction func equal(_ sender: Any) {
        if result.text == "0"{
            result.text = "0"
        }
        else{
            let a = Double(result_1)!
            let b = Double(result.text!)!
            if number == 1
                
            {
                let c = (a * 1000000 + b * 1000000) / 1000000
                result.text = String(c)
            }else if number == 2 {
                
                let c = (a * 1000000 - b * 1000000) / 1000000
                result.text = String(c)
            }else if number == 3
            {
                let c = ((a * 1000000) * (b * 1000000)) / 1000000000000
                result.text = String(c)
            }else if number == 4 {
                let c = (a * 1000000) / (b * 1000000)
                result.text = String(c)
            }
            var show:String = result.text!
            while show.last == "0"{
                show.removeLast()
            }
            while show.last == "."{
                show.removeLast()
            }
            result.text = show
            result_1 = result.text!
            re = 1
            add = 0
        }
        
    }
    @IBAction func clear(_ sender: Any) {
        result.text = "0"
        add = 0
        re = 1
    }
    @IBAction func change(_ sender: Any) {
        let count = Double (result.text!)!
        let count2 = -count
        result.text = String(count2)
        var show:String = result.text!
        while show.last == "0"{
            show.removeLast()
        }
        while show.last == "."{
            show.removeLast()
        }
        result.text = show
        re = 0
    }
    @IBAction func dot(_ sender: Any) {
        if result.text!.contains("."){
            result.text = result.text!
        }
        else{
            if result.text! == ""
            {
                result.text = "0."
            }
            else
            {
                result.text = result.text! + "."
            }
            re = 0
        }
    }
    @IBAction func percwnt(_ sender: Any) {
        if result.text! == "0"
        {
            result.text = "0"
        }
        else{
            let count = Double (result.text!)!
            let count2 = count * 0.01
            result.text = String(count2)
            re = 0
        }
        
    }
}

