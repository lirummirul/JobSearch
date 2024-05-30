//
//  JobSearchApp.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import SwiftUI

@main
struct TicketSearchApp: App {
    @StateObject var coordinator = AppCoordinator()
    var body: some Scene {
        WindowGroup {
            TabCoordinator(coordinator: coordinator)
                .environmentObject(coordinator)
        }
    }
}
