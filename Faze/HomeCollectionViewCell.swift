//
//  HomeCollectionViewCell.swift
//  Faze
//
//  Created by riddhi gupta on 20/12/20.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageViews: UIImageView!
    
    override func awakeFromNib() {
        imageViews.layer.cornerRadius = 12.16
    }
    
}
