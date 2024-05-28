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
    case ticket
    case hotel
    case short
    case sub
    case person
}
