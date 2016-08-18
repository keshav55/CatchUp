//
//  FriendListViewController.swift
//  Friend
//
//  Created by Nikita Ashok on 8/15/16.
//  Copyright © 2016 Nikita Ashok. All rights reserved.
//

import UIKit
class FriendListViewController: UITableViewController {
    
    
    var friends = [String]()
    
    var newFriend: String = " "
    

    // let imageView = UIImageView(image: backgroundImage)
    
    @IBAction func cancel(segue:UIStoryboardSegue) {
        
    }
    
    @IBAction func done(segue:UIStoryboardSegue) {
        
        let friendDetailVC = segue.sourceViewController as!FriendDetailViewController
        
        newFriend = friendDetailVC.name
        
        friends.append(newFriend)
        
        self.tableView.reloadData()
        
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //friends = ["Friend 1","Friend 2","Friend 3"]//
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        
        return 1
        
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return the number of rows in the section.
        
        tableView.separatorStyle = .None
        
        return friends.count
        
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("friendCell", forIndexPath: indexPath) 
    
        cell.textLabel!.text = friends[indexPath.row]
    
        
        return cell
        
    }
    
}

