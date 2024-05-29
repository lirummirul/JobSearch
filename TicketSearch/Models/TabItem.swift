//
//  TabItem.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import Foundation

struct TabItem: Identifiable {
    var id = UUID()
    var icon: String
    var tab: Tab
}

enum Tab: String {
    case ticket = "air-icon"
    case hotel = "hotel-icon"
    case short = "short-icon"
    case sub = "sub-icon"
    case person = "profile-icon"
    
    var iconName: String {
        rawValue
    }
}
