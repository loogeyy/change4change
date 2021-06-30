//
//  CustomTableViewCell.swift
//  change4change
//
//  Created by  Scholar on 6/29/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var mainLabel: UILabel!

    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var OrgImageView: UIImageView!
    
    @IBOutlet weak var selectButton: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
