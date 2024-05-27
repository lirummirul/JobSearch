//
//  TabBarViewModel.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import SwiftUI
import Combine

class TabBarViewModel: ObservableObject {
    @Published var selectedIndex: Int = 0
    @Published var tabItems: [TabItem] = []

    private var cancellables = Set<AnyCancellable>()

    init() {
        setupTabItems()
    }

    private func setupTabItems() {
        tabItems = [
            TabItem(title: "Search", image: "magnifyingglass", tag: 1),
            TabItem(title: "Favorites", image: "heart", tag: 2),
            TabItem(title: "Responses", image: "envelope", tag: 3),
            TabItem(title: "Messages", image: "message", tag: 4),
            TabItem(title: "Profile", image: "person", tag: 5)
        ]
    }

    func selectTab(index: Int) {
        selectedIndex = index
    }
}
