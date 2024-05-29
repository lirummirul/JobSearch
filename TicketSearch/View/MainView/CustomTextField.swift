//
//  CustomTextField.swift
//  TicketSearch
//
//  Created by Lambert Lani on 5/29/24.
//

import SwiftUI
import Combine

struct CustomTextField: View {
    @Binding var departurePlace: String
    @Binding var destinationPlace: String

    var body: some View {
        VStack(spacing: 0) {
            // Поле ввода места отправления
            TextField("Откуда - Москва", text: $departurePlace)
                .padding(.leading, 16)
                .frame(height: 56)
                .background(Color(.systemGray5))
                .cornerRadius(8)

            // Разделительная полоска
            Rectangle()
                  .fill(Color(.systemGray4))
                  .frame(height: 1)
                  .padding(.leading, 16)
                  .padding(.trailing, 16)

            // Поле ввода места назначения
            TextField("Куда - Сочи", text: $destinationPlace)
                .padding(.trailing, 16)
                .frame(height: 56)
                .background(Color(.systemGray5))
                .cornerRadius(8)
        }
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            // Временные переменные для превью-представления
            let departurePlace = Binding.constant("")
            let destinationPlace = Binding.constant("")

            CustomTextField(departurePlace: departurePlace, destinationPlace: destinationPlace)
                .previewLayout(.fixed(width: 375, height: 100))
                .background(Color.black)
        }
    }
}
