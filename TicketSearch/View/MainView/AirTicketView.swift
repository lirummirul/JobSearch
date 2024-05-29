//
//  SearchView.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import SwiftUI
import Combine

struct SearchView: View {
    @State private var departurePlace = ""
    @State private var destinationPlace = ""
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text("Поиск дешевых авиабилетов")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                    .frame(maxWidth: .infinity, alignment: .center)
                
                CustomTextField(departurePlace: $departurePlace, destinationPlace: $destinationPlace)

             
                Text("Музыкально отлететь")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
        
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
