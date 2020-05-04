//
//  NewBoxes.swift
//  Subscriptions
//
//  Created by Benjamin Simpson on 3/5/20.
//  Copyright © 2020 Benjamin Simpson. All rights reserved.
//
import UIKit

class NewBoxesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    lazy var collectionView: UICollectionView = {
        let lv = LayoutView()
        let collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: lv)
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.alwaysBounceVertical = true
        collectionView.backgroundColor = .purple
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib.init(nibName: "NewBoxesCell", bundle: nil), forCellWithReuseIdentifier: "NewBoxesCell")
        return collectionView
    }()
    
    let data: [NewBox] = [NewBox(image: #imageLiteral(resourceName: "manchester"), name: "Manchester"),
                          NewBox(image: #imageLiteral(resourceName: "kings"), name: "Kings"),
                          NewBox(image: #imageLiteral(resourceName: "49ers"), name: "49ers"),
                          NewBox(image: #imageLiteral(resourceName: "bruins"), name: "Bruins"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
        navigationItem.title = "New Dynasty Packages"
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewBoxesCell", for: indexPath) as! NewBoxesCell
        cell.setUp(with: data[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell: NewBoxesCell = collectionView.cellForItem(at: indexPath) as! NewBoxesCell
        cell.backgroundColor = .yellow
    }

}


