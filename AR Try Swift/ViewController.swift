//
//  ViewController.swift
//  AR Try Swift
//
//  Created by Roxana Jula on 25/09/2020.
//

import UIKit

class ViewController: UIViewController {
    let apartments: [Apartment] = Bundle.main.decode("apartments.json")
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self
            tableView.showsHorizontalScrollIndicator = false
            tableView.rowHeight = UITableView.automaticDimension
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.6588235294, green: 0.5647058824, blue: 0.9960784314, alpha: 1)
    }
}

// MARK: - Display Logic -
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        apartments.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(ApartmentTableViewCell.self)",
                                                       for: indexPath) as? ApartmentTableViewCell
        else { fatalError("Could not create ApartmentTableViewCell") }
        let apartment = apartments[indexPath.row]
        cell.selectionStyle = .none
        cell.apartmentNameLabel.text = apartment.name
        cell.apartmentDescriptionLabel.text = "🛋 \(apartment.description)"
        cell.apartmentPriceLabel.text = "💵 \(apartment.price)"
        return cell
    }
}
