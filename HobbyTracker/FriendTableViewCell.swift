//
//  FriendTableViewCell.swift
//  HobbyTracker
//
//  Created by John Pitts on 10/10/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    @IBOutlet weak var numberOfHobbiesLabel: UILabel!
    
    var friend: Friend? {
        didSet {                             // Property Observer: if friend changes, it'll run the brackets
            updateViews()
        }
    }
    
    private func updateViews() {
        
        guard let friend = friend else { return }
        
        hometownLabel.text = "   \(friend.hometown)"
        nameLabel.text = friend.name
        numberOfHobbiesLabel.text = String(friend.hobbies.count)
    }
    
}
