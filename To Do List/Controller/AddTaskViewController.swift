//
//  AddTaskViewController.swift
//  To Do List
//
//  Created by Rehan Parkar on 2018-03-05.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {
    
    //outletd
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var taskTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func addTaskButtonPressed(_ sender: Any) {
        
        if taskTextField.text != "" {
            
            todoList?.append(taskTextField.text!)
        }
        
        navigationController?.popToRootViewController(animated: true)
    }
    
    

}
