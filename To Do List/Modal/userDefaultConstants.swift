//
//  userDefaultConstants.swift
//  To Do List
//
//  Created by Rehan Parkar on 2018-03-05.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import Foundation

var todoList: [String]?

func saveData(todoList: [String]){
    
    UserDefaults.standard.set(todoList, forKey: "todoList")
    
}

func fetchData() -> [String]? {
    
    guard let todo = UserDefaults.standard.array(forKey: "todoList") as? [String] else {return nil}

    return todo
    
}
