//
//  FriendsTableViewController.swift
//  HobbyTracker
//
//  Created by John Pitts on 10/8/19.
//  Copyright © 2019 johnpitts. All rights reserved.
//

import UIKit

class FriendsTableViewController: UIViewController, UITableViewDelegate /*, AddFriendDelegate you can add it here OR use the extension below */ {
    
    @IBOutlet weak var tableView: UITableView!
    
    var friends: [Friend] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ModalAddFriend" {
            if let addFriendVC = segue.destination as? AddFriendViewController {
                addFriendVC.delegate = self  // can assign delegate to anything that conforms to the protocol, and this file conforms!  see extension
            }
        }
        if segue.identifier == "ShowDetail" {
            if let indexPath = tableView.indexPathForSelectedRow,
                let friendDetailVC = segue.destination as? FriendDetailViewController {
                friendDetailVC.friend = friends[indexPath.row]
            }
        }
    }


}

extension FriendsTableViewController: AddFriendDelegate {
    
    func friendWasAdded(_ friend: Friend) {
        friends.append(friend)
        
        tableView.reloadData()
    }
}

extension FriendsTableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as? FriendTableViewCell else { return UITableViewCell() }   // using () is like an empty version of the class, similar to setting an array to []
        let friend = friends[indexPath.row]
        cell.friend = friend

        return cell
    }
    
    
}

