//
//  CitiesXibViewTableViewCell.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 18.03.2024.
//

import UIKit

class CitiesXibViewTableViewCell: UITableViewCell {

    @IBOutlet weak var cityLabel: UILabel!
    
    func configure(cityName: String) {
        cityLabel.text = cityName
    }
    
}
