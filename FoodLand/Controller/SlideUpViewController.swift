//
//  SlideUpViewController.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 28/03/2022.
//

import UIKit


class SlideUpViewController: UIViewController {
    
    @IBOutlet weak var bottomAnchor: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }    

    //    class SlideUpViewController: UIViewController {
    //    var menuTableViewController : MenuTableViewController?
    
    @IBAction func menuBtnPressed(_ sender: Any) {
        //        menuTableViewController?.delegate = self
        bottomAnchor.constant = 0
        UIView.animate(withDuration: 0.3){
            self.view.layoutIfNeeded()
        }
    }
    func didTabCloseBtn() {
        bottomAnchor.constant = -350
        UIView.animate(withDuration: 0.3){
            self.view.layoutIfNeeded()
        }
    }
}
//}
