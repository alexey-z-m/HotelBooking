//
//  RoomData.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 04.09.2023.
//

import SwiftUI

struct RoomData: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Text("Стандартный с видом на бассейн или сад")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                    .font(Font.custom("SF Pro Display", size: 22).weight(.medium))
                    .padding([.leading, .trailing], 16)
                Spacer()
            }
            Peculiarities(tags: ["Все включено", "Кондиционер"])
            HStack {
                Button {} label: {
                    Text("Подробнее о номере")
                        .font(Font.custom("SF Pro Display", size: 17).weight(.medium))
                        .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                        .padding([.leading], 10)
                        .padding([.top, .bottom], 5)
                    Image(systemName: "chevron.right")
                        .font(Font.custom("SF Pro Display", size: 17).weight(.medium))
                        .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                        .padding(.trailing, 10)
                }
                .background {
                    Rectangle()
                        .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1).opacity(0.1))
                        .cornerRadius(5)
                }
                .padding(.leading, 16)
            }
            HStack {
                Text("186 600 ₽")
                    .font(Font.custom("SF Pro Display", size: 30).weight(.semibold))
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                Text("за 7 ночей с перелётом")
                    .multilineTextAlignment(.leading)
                    .font(Font.custom("SF Pro Display", size: 16))
                    .foregroundColor(.secondary)
                Spacer()
            }
        }
    }
}

struct RoomData_Previews: PreviewProvider {
    static var previews: some View {
        RoomData()
    }
}
