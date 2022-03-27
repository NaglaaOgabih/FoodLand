//
//  ContactUs+TableView.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 27/03/2022.
//

import UIKit

extension ContactUsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactImgsArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contactUsTableView.dequeueReusableCell(withIdentifier: "contactUsCell", for: indexPath) as! ContactUsTableViewCell
        cell.contactImg.image = contactImgsArray[indexPath.row]
        cell.contactLabel.text = contactLabels[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
