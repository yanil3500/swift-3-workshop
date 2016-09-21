//
//  Identity.swift
//  CFS3ToDoList
//
//  Created by Adam Wallraff on 9/21/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import Foundation

protocol Identity{
    func identifier() -> String
}

extension Identity{
    func identifier() -> String{
        return UUID().uuidString
    }
}
