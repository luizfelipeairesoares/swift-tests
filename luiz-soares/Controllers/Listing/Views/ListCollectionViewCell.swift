//
//  ListCollectionViewCell.swift
//  luiz-soares
//
//  Created by Luiz Aires Soares on 5/8/16.
//  Copyright © 2016 enjoei. All rights reserved.
//

import UIKit

class ListCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblLikeCount: UILabel!
    
    func cellIdentifier() -> String {
        return "ListCollectionViewCellIdentifier"
    }
    
    func configureCell(p: Product) {
        
        
        
        self.lblName.text = p.title
        self.lblPrice.text = String(format: "%2.2f", p.price)
        self.lblLikeCount.text = String(p.likesCount)
    }
}
