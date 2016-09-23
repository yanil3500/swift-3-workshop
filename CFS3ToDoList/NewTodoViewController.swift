//
//  NewTodoViewController.swift
//  CFS3ToDoList
//
//  Created by Adam Wallraff on 9/22/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import UIKit

class NewTodoViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.textField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func closeButtonPressed(_ sender: AnyObject) {
    
        dismiss(animated: true, completion: nil)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let userText = textField.text{
            let todo = Todo(text: userText)
            TodoList.shared.add(todo: todo)
        }
        
        dismiss(animated: true, completion: nil)
        
        return true
    }
    

}
