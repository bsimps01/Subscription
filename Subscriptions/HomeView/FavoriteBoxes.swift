//
//  FavoriteBoxes.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/4/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//

import UIKit

struct FavoriteBoxes: Section {
    let numberOfItems = 3
    let images = [
    "angels",
    "lakers",
    "trojans",
    ]
    let textPlace = [
    "angels",
    "lakers",
    "trojans",
    ]
    
    func layoutSection() -> NSCollectionLayoutSection? {
        
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.95), heightDimension: .fractionalHeight(0.35))

        let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitem: item, count: 3)

        let section = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0)
        return section
    }
    
    func configureCell(collectionView: UICollectionView, indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: FavoritesCell.identifier, for: indexPath) as! FavoritesCell
        cell.imageView.image = UIImage(named: images[indexPath.row])
        cell.favoritesLabel.text = textPlace[indexPath.row]
        return cell
    }
}
