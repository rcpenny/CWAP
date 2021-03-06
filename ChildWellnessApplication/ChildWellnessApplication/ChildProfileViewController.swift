//
//  ChildProfileViewController.swift
//  ChildWellnessApplication
//
//  Created by Katie Jackson on 10/6/16.
//  Copyright © 2016 group6. All rights reserved.
//

import UIKit

class ChildProfileViewController: UIViewController {
    
    //MARK: -Properties
    var child: Child?
    var user: AppUser?
    
    @IBOutlet weak var birthdate: UITextField!
    @IBOutlet weak var age: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let child = child{
            navigationItem.title = child.name
            birthdate.text = child.birthDateString
            age.text = String(child.age)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let childFormViewController = segue.destination as? ChildFormViewController{
            childFormViewController.child = child
            childFormViewController.user = user
            childFormViewController.editMode = true
        }
    }
    

}
