//
//  FeaturedCell.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/4/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import UIKit

class FeaturedCell: UICollectionViewCell {
    static var identifier: String = "FeaturedCell"
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setup()
    }

    func setup(){
        imageView.layer.cornerRadius = 10
    }

}
