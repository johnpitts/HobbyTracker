//
//  AddFriendViewController.swift
//  HobbyTracker
//
//  Created by John Pitts on 10/10/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

import UIKit

class AddFriendViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField! // @IBOutlet tells XCode/compiler there's going to be a connection to something in the Storyboard
    @IBOutlet weak var hometownTextField: UITextField!
    @IBOutlet weak var hobby1TextField: UITextField!
    @IBOutlet weak var hobby2TextField: UITextField!
    @IBOutlet weak var hobby3TextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // to change the name of your outlets it's best to use refactor / rename ow you have to redrag the connection.
    @IBAction func cancelButtonTapped(_ sender: UIBarButtonItem) {
        
        dismiss(animated: true, completion: nil)    // only used for Modal segues
    }
    
    
    @IBAction func saveButtonTapped(_ sender: UIBarButtonItem) {
        
        // pull data from text fields, validate if data is good
        
        // turn everything into a valid record... so let's create the model
    }
    
    



}
