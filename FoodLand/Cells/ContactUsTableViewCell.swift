//
//  ContactUsTableViewCell.swift
//  FoodLand
//
//  Created by Naglaa Ogabih on 27/03/2022.
//

import UIKit
class ContactUsTableViewCell: UITableViewCell {
    @IBOutlet weak var contactImg: UIImageView!
    @IBOutlet weak var contactLabel: UILabel!
    @IBOutlet weak var customizedView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        DispatchQueue.main.async {
//            self.customizedView.dropShadow(view: self.customizedView, shadowOpacity: 0.2, shadowColor: UIColor.red.cgColor, shadowRadius: 5)
            self.customizedView.roundCorners(corners: [.topLeft, .bottomRight], radius: 90.0)
        }
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}

