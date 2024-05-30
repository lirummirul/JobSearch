//
//  ResponsesView.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import SwiftUI

struct ShortView: View {
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

struct ShortView_Previews: PreviewProvider {
    static var previews: some View {
        ShortView(coordinator: AppCoordinator())
    }
}
