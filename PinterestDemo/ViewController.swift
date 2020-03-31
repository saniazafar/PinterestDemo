//
//  ViewController.swift
//  PinterestDemo
//
//  Created by sania zafar on 29/03/2020.
//  Copyright © 2020 sania zafar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    lazy var collectionViewLayout: PinterestCollectionViewLayout = {
        let layout = PinterestCollectionViewLayout()
        layout.delegate = self
        
        return layout
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionViewCell()
    }

    private func registerCollectionViewCell() {
        collectionView.register(UINib(nibName: "ImageViewCell", bundle: nil), forCellWithReuseIdentifier: "ImageViewCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.collectionViewLayout = self.collectionViewLayout
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if let imageCell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImageViewCell", for: indexPath) as? ImageViewCell {
            imageCell.configureCell(with: "\(indexPath.row)")
            cell = imageCell
        }
        
        return cell
    }
    
}

extension ViewController: PinterestCollectionViewLayoutDelegate {
    
    func heightForImage(at indexPath: IndexPath) -> CGFloat?  {
        
        return UIImage(named: "\(indexPath.row)")?.size.height
    }
    
}
