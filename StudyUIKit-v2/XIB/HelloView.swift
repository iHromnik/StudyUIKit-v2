//
//  HelloView.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 18.03.2024.
//

import UIKit

class HelloView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var label: UILabel!
    
    var text: String? {
        didSet {
            label.text = text
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureUI()
    }
    
   private func configureUI() {
       Bundle.main.loadNibNamed("HelloView", owner: self, options: nil)
       addSubview(contentView)
       contentView.frame = self.bounds
       contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
