//
//  changeviewViewController.swift
//  calculation2
//
//  Created by 井上正裕 on 2017/01/17.
//  Copyright © 2017年 井上正裕. All rights reserved.
//

import UIKit

class changeviewViewController: UIViewController, UITabBarDelegate {

 
    @IBOutlet weak var testView2: UIView!
    @IBOutlet weak var testTabBar: UITabBar!
    @IBOutlet weak var testView1: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //昼画面のみ表示にする。
        testView1.isHidden = false
        testView2.isHidden = true
        
        //デリゲート先を自分に設定する。
        testTabBar.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //ボタン押下時の呼び出しメソッド
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem){
        switch item.tag {
        case 1:
            //昼画面を表示する。
            testView1.isHidden = false
            testView2.isHidden = true
        case 2:
            //夕方画面を表示する。
            testView1.isHidden = true
            testView2.isHidden = false
        default:
            return
        }
    }

}
