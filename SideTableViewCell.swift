//
//  SlideTableViewCell.swift
//  tiffinbox
//
//  Created by Mahesh on 07/01/20.
//  Copyright © 2020 Mahesh. All rights reserved.
//

import UIKit

class SideTableViewCell: UITableViewCell {

    @IBOutlet weak var side_img: UIImageView!
    @IBOutlet weak var side_lbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
