//
//  FriendDetailsViewController.swift
//  Friends
//
//  Created by Nikita Ashok on 8/27/16.
//  Copyright © 2016 Nikita Ashok. All rights reserved.
//

import UIKit

class FriendDetailsViewController: UITableViewController {
    
    var friend : Friend?
    
var relation:String = "None" {
       didSet {
            detailLabel.text? = relation
        }
    }

    
    
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    
    required init?(coder aDecoder: NSCoder) {
        print("init FriendDetailsViewController")
        super.init(coder: aDecoder)
    }
    
    deinit {
        print("deinit FriendDetailsViewController")
    }
    
    @IBAction func unwindWithSelectedRelation(segue:UIStoryboardSegue) {
        if let relationPickerViewController = segue.sourceViewController as? RelationPickerViewController,
            selectedRelation = relationPickerViewController.selectedRelation {
            relation = selectedRelation
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SavePlayerDetail" {
            friend = Friend(name: nameTextField.text!, relation: relation)
        }
        
        if segue.identifier == "PickRelation" {
            if let relationPickerViewController = segue.destinationViewController as? RelationPickerViewController {
                relationPickerViewController.selectedRelation = relation
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
}
