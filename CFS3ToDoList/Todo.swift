//
//  Todo.swift
//  CFS3ToDoList
//
//  Created by Adam Wallraff on 9/21/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import Foundation

class Todo: Identity{
    
    var text: String
    
    var identifier: String
    
    init(text: String) {
        self.text = text
        self.identifier = UUID().uuidString
    }
    
}
