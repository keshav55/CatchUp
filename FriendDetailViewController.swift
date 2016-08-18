//
//  FriendDetailViewController.swift
//  Friend
//
//  Created by Nikita Ashok on 8/15/16.
//  Copyright © 2016 Nikita Ashok. All rights reserved.
//
import UIKit

class FriendDetailViewController: UIViewController {
    
    @IBOutlet weak var friendName: UITextField!
    
    var name: String = " "
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        
     if segue.identifier == "doneSegue" {
            
            name = friendName.text!
            
        }
        
    }
    
}
