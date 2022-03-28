//
//  MenuTableViewController.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 28/03/2022.
//

import UIKit
class MenuTableViewController: UIViewController {
    
    var menuStringsArray : [String] = ["Most Selling","Burger","Salads","Drinks","Deserts","50% offers" ]
    
    @IBOutlet weak var menuTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewShadow()
    }
    
    @IBAction func closeBtnPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    func tableViewShadow(){
        menuTableView.layer.shadowColor = UIColor.lightGray.cgColor
        menuTableView.layer.shadowOffset = .zero
        menuTableView.layer.shadowOpacity = 0.4
        menuTableView.layer.shadowRadius = 5.0
        menuTableView.layer.masksToBounds = false
    }
}
