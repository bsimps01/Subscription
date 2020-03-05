//
//  FavoritesCell.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/4/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import UIKit

class FavoritesCell: UICollectionViewCell {
    static var identifier: String = "FavoritesCell"
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var favoritesLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setup()
    }
    
    func setup(){
        imageView.layer.cornerRadius = 10
    }

}
