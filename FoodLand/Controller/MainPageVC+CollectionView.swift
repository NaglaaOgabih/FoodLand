//
//  MainPageVC+CollectionView.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 24/03/2022.
//

import UIKit

extension MainPageViewController :UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCell", for: indexPath) as! MainCollectionViewCell
        cell.pageSlider.numberOfPages = mainCollectionViewImgs.count
        cell.pageSlider.currentPage = indexPath.row
        cell.imgView.image = mainCollectionViewImgs[indexPath.row]
        cell.imgView.layer.cornerRadius = 10
        
        return cell
    }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return collectionView.frame.size
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
