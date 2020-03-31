//
//  ImageViewCell.swift
//  PinterestDemo
//
//  Created by sania zafar on 29/03/2020.
//  Copyright © 2020 sania zafar. All rights reserved.
//

import UIKit

class ImageViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    func configureCell(with imageName: String) {
        self.imageView.image = UIImage(named: imageName)
    }
    
}
