//
//  addnumber.swift
//  calculation2
//
//  Created by 井上正裕 on 2016/12/23.
//  Copyright © 2016年 井上正裕. All rights reserved.
//

import Foundation
//グローバル変数で定義しておく必要性？？
var cnt : Int = 0
var addnumber : Int = 0
var digit : Int = 0
var calcnum : Int = 0
var firstnumber : Int = 0

infix operator ^^
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

class calcnumber{

    var calcnumber : Int = 0
    var btncnt : Int = 0
    var roop : Int = 0
 
    
    //数を生成
    func displaynumber (number : Int ,digit : Int ) -> Int{
        calcnum = number  + calcnum * 10
        return calcnum
    }
    
    //桁の扱い
    func digitcount (cnt : Int) -> Int{
        digit = 10 ^^ (cnt - 1)
        return  digit
    }
    
    //何かと値を一旦クリアする必要がある(一応関数化)
    func clear(){
        cnt = 0
        addnumber = 0
        calcnum = 0
    }

    
}
