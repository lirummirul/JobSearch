//
//  CustomTextField.swift
//  TicketSearch
//
//  Created by Lambert Lani on 5/30/24.
//

import SwiftUI
import Combine

struct CustomTextField: View {
    @Binding var departurePlace: String
    @Binding var destinationPlace: String
    var textF: Color = Color(CGColor(red: 62/255, green: 63/255, blue: 67/255, alpha: 1))
    var backTF: Color = Color(CGColor(red: 47/255, green: 47/255, blue: 53/255, alpha: 1))

    var body: some View {
        ZStack {
           Rectangle()
               .fill(backTF)
               .frame(height: 160)
               .cornerRadius(20)
               .padding(.horizontal)
            
                
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
                        
                        TextField("Куда - Сочи", text: $destinationPlace)
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
//            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.trailing, 30)
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            let departurePlace = Binding.constant("")
            let destinationPlace = Binding.constant("")

            CustomTextField(departurePlace: departurePlace, destinationPlace: destinationPlace)
                .previewLayout(.fixed(width: 375, height: 100))
//                .background(Color.black)
        }
    }
}
