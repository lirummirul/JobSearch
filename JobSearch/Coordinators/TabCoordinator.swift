//
//  TabCoordinator.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import SwiftUI

class TabCoordinator: ObservableObject {
    @Published var currentView: CurrentView = .home

    enum CurrentView {
        case home
        case jobs
        case companies
        case favorites
        case profile
    }

    func navigateToJobs() {
        currentView = .jobs
    }

    func navigateToCompanies() {
        currentView = .companies
    }

    // Добавьте дополнительные методы для перехода между экранами
}
