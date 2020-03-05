//
//  FeaturedBoxes.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/4/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import Foundation
import UIKit

struct FeaturedBoxes: Section {
    let numberOfItems = 10
    let images = [
    "angels",
    "lakers",
    "manchester",
    "trojans",
    "Yankees",
    "kings",
    "jays",
    "49ers",
    "bruins",
    "lsu",
    ]
    let textPlace = [
    "Angels",
    "Lakers",
    "Manchester",
    "Trojans",
    "Yankees",
    "Kings",
    "Blue Jays",
    "49ers",
    "Bruins",
    "LSU",
    ]
    
    func layoutSection() -> NSCollectionLayoutSection? {
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .absolute(200), heightDimension: .absolute(300))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeaturedCell.identifier, for: indexPath) as! FeaturedCell
        cell.imageView.image = UIImage(named: images[indexPath.row])
        cell.textLabel.text = textPlace[indexPath.row]
        return cell
    }
    
}
