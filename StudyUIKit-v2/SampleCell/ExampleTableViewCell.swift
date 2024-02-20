//
//  ExampleTableViewCell.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 20.02.2024.
//

import UIKit

class ExampleTableViewCell: UITableViewCell {

    @IBOutlet weak var dataLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
