//
//  MainPageViewController.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 23/03/2022.
//

import UIKit
import iOSDropDown
import SwiftyShadow
class MainPageViewController: UIViewController {

    @IBOutlet weak var topView: SwiftyInnerShadowView!
    @IBOutlet weak var menuBtn: UIButton!
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var deliveringToDropDown: DropDown!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        topView.shadowLayer.shadowRadius = 4
        topView.shadowLayer.shadowColor = UIColor.gray.cgColor
        topView.shadowLayer.shadowOpacity = 0.2
//        topView.cornerRadius = 120
        topView.shadowLayer.shadowOffset = CGSize.zero
        mainTableView.showsVerticalScrollIndicator = false
        mainTableView.separatorStyle = .none
        mainTableView.reloadData()

    }
    

}
extension MainPageViewController :UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "mainCell", for: indexPath) as! MainCollectionViewCell
        cell.pageSlider.currentPage = indexPath.row
        cell.imgView.layer.cornerRadius = 10
        return cell
    }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return collectionView.frame.size

    }
}
extension MainPageViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainTableCell", for: indexPath) as! MainTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 242
    }
    
    
    
}
