//
//  TodoStore.swift
//  CFS3ToDoList
//
//  Created by Adam Wallraff on 9/21/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import Foundation

class TodoList{
    static let shared = TodoList()
    
    var allTodos = [Todo]()

    
    private init(){}
    
    
    func add(object: Todo)
    {
        self.allTodos.append(object)
    }
    
    func remove(item: Todo)
    {
        self.allTodos = self.allTodos.filter({ (todo) -> Bool in
            return todo.identifier() != item.identifier()
        })
    }
    
    func removeAllObjects()
    {
        self.allTodos.removeAll()
    }
    
    func objectFor(index: Int) -> Todo
    {
        return self.allTodos[index]
    }
    
    func count() -> Int
    {
        return self.allTodos.count
    }
}
