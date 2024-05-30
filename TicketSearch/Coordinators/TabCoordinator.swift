//
//  TabCoordinator.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import SwiftUI

struct TabCoordinator: View {
    @ObservedObject var coordinator : AppCoordinator
    
    var body: some View {
        ZStack{
            switch coordinator.tabCoordinator{
            case .ticket:
                AirTicketView(coordinator: coordinator)
                
            case .hotel:
                HotelsView(coordinator: coordinator)
            case .short:
                ShortView(coordinator: coordinator)
            case .sub:
                SubscriptionView(coordinator: coordinator)
            case .person:
                ProfileView(coordinator: coordinator)
            }
            
            ContentView(coordinator: coordinator)

        }
        .ignoresSafeArea()
    }
}

struct TabCoordinator_Previews: PreviewProvider {
    static var previews: some View {
        TabCoordinator(coordinator: AppCoordinator())
    }
}
