//
//  TreeCell.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 2/6/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import UIKit

class TreeCell: UITableViewCell {
    
    let table: UITableView = {
        let table = UITableView()
        table.translatesAutoresizingMaskIntoConstraints = false
        return table
    }()
    let treeArray = [String](repeating: "🌲 planted", count: 100)

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor.lightGray
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
