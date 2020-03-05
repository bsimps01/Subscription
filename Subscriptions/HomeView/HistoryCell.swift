//
//  HistoryCell.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/5/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import UIKit

class HistoryCell: UITableViewCell {
    
    let background : UIView = {
        let background = UIView()
        background.translatesAutoresizingMaskIntoConstraints = false
        return background
    }()
    
    static var identifier = "HistoryCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
        
    }
    
    func setup() {
        self.contentView.addSubview(background)
        background.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
        background.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor).isActive = true
        background.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor).isActive = true
        background.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor).isActive = true
        
    }
    func createBox(item: Item) {
        textLabel?.text = item.name
        
        imageView?.image = UIImage(named: item.image)
        imageView?.translatesAutoresizingMaskIntoConstraints = false
        imageView?.heightAnchor.constraint(equalToConstant: 60).isActive = true
        imageView?.widthAnchor.constraint(equalToConstant: 60).isActive = true
        imageView?.centerYAnchor.constraint(equalTo: background.centerYAnchor).isActive = true
        
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        textLabel?.centerYAnchor.constraint(equalTo: background.centerYAnchor).isActive = true
        textLabel?.leadingAnchor.constraint(equalTo: imageView!.trailingAnchor, constant: 25).isActive = true
        
    }

    func setContents(box: Box) {
        
        textLabel?.text = box.date
        imageView?.image = UIImage(named: box.image)
        imageView?.translatesAutoresizingMaskIntoConstraints = false
        imageView?.heightAnchor.constraint(equalToConstant: 60).isActive = true
        imageView?.widthAnchor.constraint(equalToConstant: 60).isActive = true
        imageView?.centerYAnchor.constraint(equalTo: background.centerYAnchor).isActive = true
        
        textLabel?.translatesAutoresizingMaskIntoConstraints = false
        textLabel?.centerYAnchor.constraint(equalTo: background.centerYAnchor).isActive = true
        textLabel?.leadingAnchor.constraint(equalTo: imageView!.trailingAnchor, constant: 25).isActive = true
    }
    
}

