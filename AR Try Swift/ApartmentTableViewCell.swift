//
//  ApartmentCell.swift
//  AR Try Swift
//
//  Created by Roxana Jula on 25/09/2020.
//

import UIKit

class ApartmentTableViewCell: UITableViewCell {
    @IBOutlet weak var containerView: UIView! {
        didSet {
            containerView.layer.cornerRadius = 16
        }
    }
    @IBOutlet weak var apartmentImageView: UIImageView! {
        didSet {
            apartmentImageView.layer.cornerRadius = 16
            apartmentImageView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        }
    }
    @IBOutlet weak var apartmentNameLabel: UILabel! {
        didSet {
            apartmentNameLabel.textColor = .black
            apartmentNameLabel.font = .systemFont(ofSize: 20, weight: .bold)
        }
    }
    @IBOutlet weak var apartmentDescriptionLabel: UILabel! {
         didSet {
            apartmentDescriptionLabel.textColor = .lightGray
            apartmentDescriptionLabel.font = .systemFont(ofSize: 18, weight: .regular)
         }
     }
    @IBOutlet weak var apartmentPriceLabel: UILabel! {
         didSet {
            apartmentPriceLabel.textColor = .lightGray
            apartmentPriceLabel.font = .systemFont(ofSize: 18, weight: .regular)
         }
     }
}
