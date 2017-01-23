//
//  TableViewController.swift
//  calculation2
//
//  Created by 井上正裕 on 2017/01/21.
//  Copyright © 2017年 井上正裕. All rights reserved.
//

import UIKit

var todolist = [String]()
class TableViewController: UIViewController , UITableViewDelegate,UITextFieldDelegate{
    
    
  
   
    @IBOutlet weak var tableView: UITableView!


//    @IBAction func addmemo(_ sender: Any) {
//        todolist.append(textfield.text!)
//        textfield.text = ""
//        UserDefaults.standard.set(todolist, forKey: "list")
//        if UserDefaults.standard.object(forKey: "list") != nil {
//            todolist = UserDefaults.standard.object(forKey: "list") as! [String]
//        }
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if UserDefaults.standard.object(forKey: "list") != nil {
            todolist = UserDefaults.standard.object(forKey: "list") as! [String]
        }
        
        self.tableView.delegate = self

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // UITableView : 350
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todolist.count
    }
    
    // UITableView : 356
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = todolist[indexPath.row]
        
        return cell
        
    }
    
    // UITableView : 390
    func tableView(_ tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            todolist.remove(at: indexPath.row)
            UserDefaults.standard.set(todolist, forKey: "list")
            tableView.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    



}
