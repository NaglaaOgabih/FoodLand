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
extension MainTableViewCell :  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = offersCollectionView.dequeueReusableCell(withReuseIdentifier: "offersCell", for: indexPath) as! OffersCollectionViewCell
        cell.offersImgView.layer.cornerRadius = 10
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return collectionView.frame.size

}
    
}
