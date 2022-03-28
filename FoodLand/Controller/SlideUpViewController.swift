//
//  SlideUpViewController.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 28/03/2022.
//

import UIKit


<<<<<<< HEAD
class SlideUpViewController: UIViewController {
    
    @IBOutlet weak var bottomAnchor: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

    }    
    @IBAction func menuBtnPressed(_ sender: Any) {

    }
//    func didTabCloseBtn() {
//        bottomAnchor.constant = -350
//        UIView.animate(withDuration: 0.3){
//            self.view.layoutIfNeeded()
//        }
//    }
=======
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
>>>>>>> 7cb3234f1cdfae831015650759ce251f11123873
}
