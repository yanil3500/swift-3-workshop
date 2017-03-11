//
//  Todo.swift
//  CFS3ToDoList
//
//  Created by Elyanil Liranzo Castro on 3/6/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

import Foundation

class Todo: Identity {
    var text: String;
    
    var identifier: String;
    
    init(text: String){
        self.text = text;
        self.identifier = UUID().uuidString;
    }
}
