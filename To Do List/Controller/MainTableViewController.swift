//
//  ViewController.swift renamed to MainTableViewController
//  To Do List
//
//  Created by Rehan Parkar on 2018-03-05.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class MainTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //outlets
    
    @IBOutlet weak var listTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.dataSource = self
        listTableView.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        listTableView.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
    
        return (todoList?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        if let todo = todoList {
            
            cell.textLabel?.text = todo[indexPath.row]
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            todoList?.remove(at: indexPath.row)
        }
        
        tableView.reloadData()
    }
    


}

