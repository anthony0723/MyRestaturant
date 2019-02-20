//
//  RecipeCellVC.swift
//  MyRestaturant
//
//  Created by Anthony Baldwin on 2/19/19.
//  Copyright © 2019 AnthonyBaldwin. All rights reserved.
//

import UIKit

class RecipeCellVC: UITableViewCell {
    
    @IBOutlet var recipeImage: UIImageView!
    @IBOutlet var rName: UILabel!
    @IBOutlet var derailLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var r_Image: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
