//
//  FriendCell.swift
//  Friends
//
//  Created by Nikita Ashok on 8/27/16.
//  Copyright © 2016 Nikita Ashok. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {
    
    @IBOutlet weak var relationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var friend: Friend! {
        didSet {
            relationLabel.text = friend.relation
            nameLabel.text = friend.name
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
