//
//  MainTableViewCell + collectionCell.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 24/03/2022.
//

import UIKit

extension MainTableViewCell :  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = offersCollectionView.dequeueReusableCell(withReuseIdentifier: "offersCell", for: indexPath) as! OffersCollectionViewCell
        cell.offersImgView.image = UIImage(named: "burger")
        cell.offersImgView.layer.cornerRadius = 10
        cell.layoutIfNeeded()
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 320.0, height:  collectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView,
                          layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets{
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 22
    }
}
