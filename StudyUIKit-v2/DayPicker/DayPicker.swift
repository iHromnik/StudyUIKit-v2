//
//  DayPicker.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 27.02.2024.
//

import UIKit

class DayPicker: UIControl {
    
   private var buttons: [UIButton] = []
    private var stackView: UIStackView!
    var selectedDays: Days? = nil {
        didSet {
            updateSelectedDay()
            sendActions(for: .valueChanged)
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupUI()
    }
    
    private func setupUI() {
        for day in Days.allDay {
            let button = UIButton(type: UIButton.ButtonType.system)
            button.setTitle(day.title, for: .normal)
            button.setTitleColor(.lightGray, for: .normal)
            button.setTitleColor(.green, for: .selected)
            button.addTarget(self, action: #selector(selectDay), for: .touchUpInside)
            buttons.append(button)
        }
        
        stackView = UIStackView(arrangedSubviews: buttons)
        addSubview(stackView)
        
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        
    }
    
    @objc func selectDay(_ sender: UIButton) {
        print(#function)
        
        
        
        guard let index = buttons.firstIndex(of: sender),
              let day = Days(rawValue: index)
        else {return}
        
        selectedDays = day
        
        
    }
    private func updateSelectedDay() {
        for (index, button) in buttons.enumerated() {
            guard let day = Days(rawValue: index) else {return}
            button.isSelected = day == selectedDays
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        stackView.frame = self.bounds
    }
    
}
