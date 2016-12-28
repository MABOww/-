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
    var divnum : Double = 0
    var divnum1 : Double = 0
    
    @IBOutlet weak var display: UITextField!
    // 数値削除
    @IBAction func clear(_ sender: Any) {
        display.text = ""
        cnt = 0
        addnumber = 0
        calcnum = 0
        firstnumber = 0
    }
    //四則演算
    @IBAction func calcflag(_ sender: Any) {
        switch (sender as AnyObject).tag {
        case 10:
            calcflag = 1
            print(calcflag)
        case 11:
            calcflag = 2
            print(calcflag)
        case 12:
             calcflag = 3
        case 13:
             calcflag = 4
        default:
             calcflag = 0
        }
        firstnumber += addnumber
        display.text = String(0)
        cnt = 0
        addnumber = 0
        calcnum = 0
    }
    
    
    
    //結果出力
    @IBAction func calcresult(_ sender: Any) {
        if calcflag == 1{
            firstnumber += addnumber
            display.text = String(firstnumber)
        } else if calcflag == 2 {
            firstnumber -= addnumber
            display.text = String(firstnumber)
        } else if calcflag == 3 {
            firstnumber *= addnumber
            display.text = String(firstnumber)
        } else if calcflag == 4{
            //割り算での小数点表示
            if firstnumber%addnumber == 0 && firstnumber > addnumber{
                firstnumber /= addnumber
                display.text = String(firstnumber)
            } else {
               divnum = Double(firstnumber)
               divnum1 = Double(addnumber)
               divnum /= divnum1
            display.text = String(divnum)
            }
        }
        cnt = 0
        firstnumber = 0
        addnumber = 0
        calcnum = 0
    }
    @IBAction func test(_ sender: Any) {
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
        cnt += 1
        addnumber = displaynum.displaynumber(number: number , digit : digit)
        display.text = String(addnumber)
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

