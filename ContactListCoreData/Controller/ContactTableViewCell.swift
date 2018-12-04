//
//  ContactTableViewCell.swift
//  ContactListCoreData
//
//  Created by Roberto Evangelista da Silva Filho on 04/12/2018.
//  Copyright © 2018 Roberto Evangelista. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
