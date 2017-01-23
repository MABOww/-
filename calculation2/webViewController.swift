//
//  webViewController.swift
//  calculation2
//
//  Created by 井上正裕 on 2017/01/16.
//  Copyright © 2017年 井上正裕. All rights reserved.
//

import UIKit

class webViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
 
    //urlを規定
    var url:String = "https://www.google.co.jp"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //web画面を表示
        loadURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadURL() {
        let requestURL = NSURL(string: url)
        let request = NSURLRequest(url: requestURL! as URL)
        webView.loadRequest(request as URLRequest)
    }

}
