//
//  MenuTableViewController.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 28/03/2022.
//

import UIKit
<<<<<<< HEAD
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
=======
protocol colseBtnSettingsDelegate{
    func didTabCloseBtn()
}
class MenuTableViewController: UITableViewController {
    
    var menuStringsArray : [String] = ["Most Selling","Burger","Salads","Drinks","Deserts","50% offers" ]
    
     var delegate : colseBtnSettingsDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.alwaysBounceVertical = false

    }
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuStringsArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = menuStringsArray[indexPath.row]
        return cell
    }

    @IBAction func closeBtnPressed(_ sender: Any) {
        delegate?.didTabCloseBtn()
>>>>>>> 7cb3234f1cdfae831015650759ce251f11123873
    }
}
