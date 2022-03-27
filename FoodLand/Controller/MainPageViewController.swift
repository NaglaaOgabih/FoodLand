//
//  MainPageViewController.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 23/03/2022.
//

import UIKit
class MainPageViewController: UIViewController {
    
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var mainCollectionView: UICollectionView!
    @IBOutlet weak var mainTableView: UITableView!
    var mainCollectionViewImgs : [UIImage] = [UIImage(named: "mainImg")!,UIImage(named: "burger")!,UIImage(named: "mainImg")!,UIImage(named: "burger")!,UIImage(named: "mainImg")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.reloadData()
        configureItems()
    }
    
    @IBAction func restaurantsBtnClicked(_ sender: Any) {
    }
    private func configureItems(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: UIImage(named: "search")!.withRenderingMode(.alwaysOriginal),
            style: .plain, target: self, action: #selector(searchClicked))
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(named: "bars")!.withRenderingMode(.alwaysOriginal),
            style: .plain, target: self, action: #selector(menuClicked))
        let tabBarButton = UIButton(frame: CGRect(x:0, y: 0, width: 70, height: 40))
//        let  dropDown = DropDown(frame: ) // set frame
        tabBarButton.titleLabel?.text = "Delivering to"
//        dropDown.text = "Delivering to"
        
        let label = UILabel(frame: CGRect(x:0, y: 0, width: 220, height: 21))
        label.textAlignment = .center
        label.text = "Road No. 3621 Seef"
        label.textColor = UIColor.lightGray
        
        let customView = UIStackView(arrangedSubviews: [tabBarButton,label])
        customView.frame = .init(x: 10, y: 0, width: 250, height: 90)
        customView.axis = .vertical
        customView.alignment = .center
        customView.spacing = 5
        navigationItem.titleView = customView
    }
    @objc func searchClicked(){
        
    }
    @objc func menuClicked(){
        
    }
    private func mainTableSettings(){
        mainTableView.showsVerticalScrollIndicator = false
        mainTableView.separatorStyle = .none
    }
}


