//
//  SlideUpViewController.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 28/03/2022.
//

import UIKit


class SlideUpViewController: UIViewController, colseBtnSettingsDelegate {
    var menuTableViewController : MenuTableViewController?
    
    @IBOutlet weak var bottomAnchor: NSLayoutConstraint!
    var isMenuShowing = false
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableViewController?.delegate = self

    }    
    @IBAction func menuBtnPressed(_ sender: Any) {
        menuTableViewController?.delegate = self
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
