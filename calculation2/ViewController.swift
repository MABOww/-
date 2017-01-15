//
//  ViewController.swift
//  calculation2
//
//  Created by 井上正裕 on 2016/12/23.
//  Copyright © 2016年 井上正裕. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let displaynum = calcnumber()
    //ボタンを押した時の数
    var number : Int = 0
    var calcflag : Int = 0
    var decimalflag : Int = 0
    var divnum : Double = 0
    var divnum1 : Double = 0
    var adddecimal : Double = 0
    var firstdecimal : Double = 0
    //表示用
    var memoryope: String = ""
    
    //入力した数値の確認
    @IBOutlet weak var display: UITextField!
    //履歴を表示
    @IBOutlet weak var calchist: UILabel!
    
    // 数値削除
    @IBAction func clear(_ sender: Any) {
        display.text = ""
        cnt = 0
        addnumber = 0
        calcnum = 0
        firstnumber = 0
        memoryope = ""
        calchist.text = String(memoryope)
        decimalflag = 0
        adddecimal = 0.0
        firstdecimal = 0.0
    }
    //四則演算
    @IBAction func calcflag(_ sender: Any) {
        if addnumber != 0{
            if decimalflag == 0{
                memoryope += String(addnumber)
            }else{
            memoryope += String(adddecimal)
            }
        }
        
        //事前に反映
        if calcflag == 0{
            firstnumber += addnumber
        }else if calcflag == 1{
            if decimalflag == 0{
                firstnumber += addnumber
                display.text = String(firstnumber)
            }else{
                firstdecimal += adddecimal
                display.text = String(firstdecimal)
            }
        }else if calcflag == 2{
            if decimalflag == 0{
                firstnumber -= addnumber
                display.text = String(firstnumber)
            }else{
                firstdecimal -= adddecimal
                display.text = String(firstdecimal)
            }
        }else if calcflag == 3{
            if decimalflag == 0{
                firstnumber *= addnumber
                display.text = String(firstnumber)
            }else{
                firstdecimal *= adddecimal
                display.text = String(firstdecimal)
            }
        }else if calcflag == 4{
            if firstnumber%addnumber == 0 && firstnumber > addnumber{
                firstnumber /= addnumber
                display.text = String(firstnumber)
            } else {
                firstdecimal = Double(firstnumber)
                adddecimal = Double(addnumber)
                firstdecimal /= adddecimal
                display.text = String(firstdecimal)
                decimalflag = 1
                print(firstdecimal)
            }
        }else{
            firstnumber += addnumber
        }
        

        
        switch (sender as AnyObject).tag {
        case 10:
            calcflag = 1
            memoryope += "+"
            calchist.text = String(memoryope)
            print (firstnumber)
        case 11:
            calcflag = 2
            memoryope += "-"
            calchist.text = String(memoryope)
            print (firstnumber)
        case 12:
             calcflag = 3
             memoryope += "×"
             calchist.text = String(memoryope)
        case 13:
             calcflag = 4
             memoryope += "÷"
             calchist.text = String(memoryope)
        default:
             calcflag = 0
        }
        if decimalflag == 0{
            display.text = String(0)
            cnt = 0
            addnumber = 0
            calcnum = 0
        }else{
        //ここで小数点の計算を実施
            display.text = String(0)
            cnt = 0
            addnumber = 0
            calcnum = 0
        }
    }
    
    
    @IBAction func pronum(_ sender: Any) {
        switch (sender as AnyObject).tag {
        case 14:
            decimalflag = 1
            adddecimal = Double(addnumber)
            firstdecimal = Double(firstdecimal)
            display.text = String(adddecimal)
        case 15:
            print (addnumber)
            print (adddecimal)
            adddecimal /= 100.00
            print (adddecimal)
            display.text = String(adddecimal)
            print(calcflag)
        case 16:
            addnumber *= -1
        default:
            calcflag = 0
            print(calcflag)
        }
        if decimalflag == 0 {
            display.text = String(addnumber)
        }else {
            display.text = String(adddecimal)
        }
    }
    
    //結果出力
    @IBAction func calcresult(_ sender: Any) {
        if calcflag == 1{
            //ここは生かしてない書き方#設計時のミス
            if decimalflag == 0{
            firstnumber += addnumber
            display.text = String(firstnumber)
            }else{
            firstdecimal += adddecimal
            display.text = String(firstdecimal)
            }
        } else if calcflag == 2 {
            if decimalflag == 0{
            firstnumber -= addnumber
            display.text = String(firstnumber)
            }else{
                firstdecimal -= adddecimal
                display.text = String(firstdecimal)
            }
        } else if calcflag == 3 {
            if decimalflag == 0{
                firstnumber *= addnumber
                display.text = String(firstnumber)
            }else{
                firstdecimal *= adddecimal
                display.text = String(firstdecimal)
            }
        } else if calcflag == 4{
            //割り算での小数点表示
            if firstnumber%addnumber == 0 && firstnumber > addnumber{
                firstnumber /= addnumber
                display.text = String(firstnumber)
            } else {
               firstdecimal = Double(firstnumber)
               adddecimal = Double(addnumber)
               firstdecimal /= adddecimal
               display.text = String(firstdecimal)
               decimalflag = 1
            }
        }
        
        if decimalflag == 0{
        memoryope += String(addnumber)
        }else{
        memoryope += String(adddecimal)
        }
        calchist.text = String(memoryope)
        cnt = 0
        addnumber = 0
        adddecimal = 0.0
        calcnum = 0
        calcflag = 0
    }
    @IBAction func test(_ sender: Any) {
        //小数点がついていない場合
        switch (sender as AnyObject).tag {
        case 0:
            number = 0
        case 1:
            number = 1
        case 2:
            number = 2
        case 3:
            number = 3
        case 4:
            number = 4
        case 5:
            number = 5
        case 6:
            number = 6
        case 7:
            number = 7
        case 8:
            number = 8
        case 9:
            number = 9
        default:
            number = 0
        }
        addnumber = displaynum.displaynumber(number: number)
        display.text = String(addnumber)
        calchist.text = String(memoryope)
        if decimalflag == 1{
        adddecimal = Double(addnumber)
        display.text = String(adddecimal)
        calchist.text = String(memoryope)
        }
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // labelを初期化
        calchist.text = ""
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

