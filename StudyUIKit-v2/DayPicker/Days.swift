//
//  Days.swift
//  StudyUIKit-v2
//
//  Created by iHRomnik on 27.02.2024.
//

import Foundation

enum Days: Int {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
    
    static let allDay: [Days] = [monday, tuesday, wednesday, thursday, friday, saturday, sunday]
    
    var title: String {
        switch self {
        case .monday: return "Pn"
        case .tuesday: return "Vt"
        case .wednesday: return "Sr"
        case .thursday: return "Ch"
        case .friday: return "Pt"
        case .saturday: return "Sb"
        case .sunday: return "Vs"
            
        }
    }
}



