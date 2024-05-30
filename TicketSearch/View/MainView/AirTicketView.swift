//
//  SearchView.swift
//  JobSearch
//
//  Created by Lambert Lani on 5/27/24.
//

import SwiftUI
import Combine

struct AirTicketView: View {
    @ObservedObject var coordinator : AppCoordinator
    
    @State private var departurePlace = ""
    @State private var destinationPlace = ""
    
    var textF: Color = Color(CGColor(red: 62/255, green: 63/255, blue: 67/255, alpha: 1))
    var backTF: Color = Color(CGColor(red: 47/255, green: 47/255, blue: 53/255, alpha: 1))
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack {
                Text("Поиск дешевых авиабилетов")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                    .frame(maxWidth: .infinity, alignment: .center)
                
    // enn
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 0) {
                        Image("search-icon")
                            .padding(.leading, 5)
                            .frame(width: 50)
                        
                        VStack(alignment: .leading, spacing: 0) {
                            TextField("Откуда - Москва", text: $departurePlace)
                                .padding(.init(top: 5, leading: 16, bottom: 5, trailing: 30))
                                .frame(height: 56)
                            
                            Rectangle()
                                .fill(backTF)
                                .frame(height: 2)
                            
                            TextField("Откуда - Москва", text: $departurePlace)
                                .padding(.init(top: 5, leading: 16, bottom: 5, trailing: 30))
                                .frame(height: 56)
                        }
                    }
                    .background(textF)
                    .font(Font.custom("Montserrat-Medium", size: 15))
                    .cornerRadius(20)
                    .padding(.leading, 30)
                    .foregroundColor(.white)
                }
      
                
    // nen
                
                CustomTextField(departurePlace: $departurePlace, destinationPlace: $destinationPlace)

             
                Text("Музыкально отлететь")
                    .foregroundColor(.white)
                    .font(.system(size: 22))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct AirTicketView_Previews: PreviewProvider {
    static var previews: some View {
        AirTicketView(coordinator: AppCoordinator())
    }
}
