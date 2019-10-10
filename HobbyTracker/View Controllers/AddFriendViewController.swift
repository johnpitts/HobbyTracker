//
//  AddFriendViewController.swift
//  HobbyTracker
//
//  Created by John Pitts on 10/10/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

import UIKit

// put the protocol into the file that's sending the data


class AddFriendViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField! // @IBOutlet tells XCode/compiler there's going to be a connection to something in the Storyboard
    @IBOutlet weak var hometownTextField: UITextField!
    @IBOutlet weak var hobby1TextField: UITextField!
    @IBOutlet weak var hobby2TextField: UITextField!
    @IBOutlet weak var hobby3TextField: UITextField!
    
    var delegate: AddFriendDelegate?
    

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
        // we use guard here to make name and hometown required, but the hobbies we use if-let bc the hobbies aren't required to continue with making the new friend
        guard let name = nameTextField.text,
              let hometown = hometownTextField.text,
              !name.isEmpty else { return }  // can't continue without a name, so return, we simply add hometown as a required field too (upto developer)
        var friend = Friend(name: name, hometown: hometown, hobbies: [])
        
        // add hobbies to friend model, for this particular user-entered friend
        if let hobby1 = hobby1TextField.text,
            !hobby1.isEmpty {
            friend.hobbies.append(hobby1)
        }
        if let hobby2 = hobby2TextField.text,
            !hobby2.isEmpty {
            friend.hobbies.append(hobby2)
        }
        if let hobby3 = hobby3TextField.text,
            !hobby3.isEmpty {
            friend.hobbies.append(hobby3)
        }
        // we would normally use a modelController to pass this new data, but in this case we're going to use a delegate, the friend already exists now, full configured
        
        dismiss(animated: true, completion: nil)
        delegate?.friendWasAdded(friend)
        
    }
}
