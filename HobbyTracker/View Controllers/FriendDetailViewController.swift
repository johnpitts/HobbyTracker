//
//  FriendDetailViewController.swift
//  HobbyTracker
//
//  Created by John Pitts on 10/10/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {
    
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var hobbyDescriptionTextView: UITextView!
    
    var friend: Friend?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        updateViews()
    }
    
    private func updateViews() {
        guard let friend = friend else { return }
        nameLabel.text = friend.name
        hometownLabel.text = friend.hometown
        var hobbyText = ""
        for hobby in friend.hobbies {
            hobbyText += "∙ \(hobby)\n"
        }
        hobbyDescriptionTextView.text = hobbyText
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
