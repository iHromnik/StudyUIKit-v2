//
//  CitiesXibViewTableViewCell.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 18.03.2024.
//

import UIKit

class CitiesXibViewTableViewCell: UITableViewCell {

    @IBOutlet weak var cityLabel: UILabel!
    
    @IBOutlet weak var cityImage: UIImageView!
    func configure(cityName: String) {
        cityLabel.text = cityName
        if let image = UIImage(named: "\(cityName)") {
            cityImage.image = image
        } else {
            cityImage.image = UIImage(systemName: "paintbrush")
        }
        
        cityImage.layer.cornerRadius = cityImage.frame.width/2
        cityImage.backgroundColor = .cyan
    }
    
}
