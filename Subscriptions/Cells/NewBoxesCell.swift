//
//  NewBoxesCell.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/5/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import UIKit

class NewBoxesCell: UICollectionViewCell {
    
    static var identifier: String = "NewBoxesCell"
    
    @IBOutlet weak var imageLabel: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        self.layer.cornerRadius = 10
        super.awakeFromNib()
        // Initialization code
    }
    public func setUp(with model: NewBox){
        imageLabel.image = model.image
        titleLabel.text = model.name


        
    }
}
