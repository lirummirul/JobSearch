//
//  FavoritesView.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import SwiftUI

struct HotelsView: View {
    @ObservedObject var coordinator : AppCoordinator
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Text("Hello, World!")
                .foregroundColor(.white)
        }
    }
}

struct HotelsView_Previews: PreviewProvider {
    static var previews: some View {
        HotelsView(coordinator: AppCoordinator())
    }
}
