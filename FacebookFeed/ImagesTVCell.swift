//
//  ImagesTVCell.swift
//  FacebookFeed
//
//  Created by Eduardo Martinez on 05/07/18.
//  Copyright © 2018 Eduardo Martinez. All rights reserved.
//

import UIKit

class ImagesTVCell: UITableViewCell {
    
    @IBOutlet weak var imvImage: UIImageView!
    @IBOutlet weak var imvHeight: NSLayoutConstraint!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDetail: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
