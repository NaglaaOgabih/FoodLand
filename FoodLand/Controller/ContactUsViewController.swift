//
//  ContactUsViewController.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 27/03/2022.
//

import UIKit

class ContactUsViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let contactImgsArray : [UIImage] = [UIImage(named: "phone")!,UIImage(named: "globe")!,UIImage(named: "map-marked-alt")!,UIImage(named: "facebook")!,UIImage(named: "twitter")!,UIImage(named: "instagram")!]
    let contactLabels : [String] = ["999 888 666","www.emcan.com","33 st, alsaif","Facebook","Twitter","Instagram"]
    
    @IBOutlet weak var contactUsTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        contactUsTableView.reloadData()
        navBarSettings()
        contactUsTableView.showsVerticalScrollIndicator = false
    }
    
    func navBarSettings(){
        navigationController?.navigationBar.topItem?.title = "Contact Us"
        
        let backBTN = UIBarButtonItem(image: UIImage(systemName: "arrow.backward"),
                                      style: .plain ,
                                      target: navigationController,
                                      action: #selector(UINavigationController.popViewController(animated:)))
        
        navigationItem.leftBarButtonItem = backBTN
        navigationItem.leftBarButtonItem?.tintColor = UIColor.black
        navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
}

