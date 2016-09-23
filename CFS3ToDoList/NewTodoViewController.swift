//
//  NewTodoViewController.swift
//  CFS3ToDoList
//
//  Created by Adam Wallraff on 9/22/16.
//  Copyright © 2016 Adam Wallraff. All rights reserved.
//

import UIKit

class NewTodoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func closeButtonPressed(_ sender: AnyObject) {
    
        dismiss(animated: true, completion: nil)
        
    }
    

}
