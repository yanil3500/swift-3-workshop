//
//  NewTodoViewController.swift
//  CFS3ToDoList
//
//  Created by Elyanil Liranzo Castro on 3/10/17.
//  Copyright © 2017 Adam Wallraff. All rights reserved.
//

import UIKit

class NewTodoViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textField.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func closeButtonPresses(_ sender: Any) {
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


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
