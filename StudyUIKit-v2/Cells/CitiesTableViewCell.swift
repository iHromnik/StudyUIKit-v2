//
//  CitiesTableViewCell.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 19.02.2024.
//

import UIKit

class CitiesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var cityLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
