//
//  ProfileCell.swift
//  tiffinbox
//
//  Created by Mahesh on 29/01/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class ProfileTableViewCell: UITableViewCell {

    @IBOutlet weak var profileimage: UIImageView!
    @IBOutlet weak var emaillabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //profileimage.image = UIImage(named: "Dominos.jpg")
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
