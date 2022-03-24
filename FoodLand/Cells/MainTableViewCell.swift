//
//  MainTableViewCell.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 23/03/2022.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var offersCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        offersCollectionView.dataSource = self
        offersCollectionView.delegate = self
        offersCollectionView.showsHorizontalScrollIndicator = false

        offersCollectionView.reloadData()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
}

