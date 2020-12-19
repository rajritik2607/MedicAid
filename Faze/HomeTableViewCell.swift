//
//  HomeTableViewCell.swift
//  Faze
//
//  Created by riddhi gupta on 20/12/20.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var date: UILabel!
    
 
    @IBOutlet weak var random2: UIImageView!
    @IBOutlet weak var day: UILabel!
    @IBOutlet weak var random: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
