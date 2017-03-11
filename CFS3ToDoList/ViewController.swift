//
//  ViewController.swift
//  CFS3ToDoList
//
//  Created by Adam Wallraff on 9/19/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.dataSource = self
        
        for number in 1...5{
            let todo = Todo(text: "Todo Number \(number)")
            TodoList.shared.add(todo: todo)
        }
       

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let todo = TodoList.shared.getTodoAt(index: indexPath.row)
        cell.textLabel?.text = todo.text
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TodoList.shared.count()
    }
}

