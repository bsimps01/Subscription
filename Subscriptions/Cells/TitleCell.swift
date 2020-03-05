//
//  TitleCell.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/5/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import UIKit

class TitleCell: UICollectionViewCell {
   static var identifier: String = "TitleCell"
    
    @IBOutlet private var labelTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func set(title: String){
        labelTitle.text = title
    }

}
