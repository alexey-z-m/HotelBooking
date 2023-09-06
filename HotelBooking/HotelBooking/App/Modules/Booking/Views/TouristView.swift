//
//  TouristView.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 06.09.2023.
//

import SwiftUI

struct TouristView: View {
    var body: some View {
        @State var phone: String = ""//"+7 (951) 555-99-00"
        VStack(alignment: .leading, spacing: 16) {
            HStack {
                Text("Первый турист")
                    .font(Font.custom("SF Pro Display", size: 22).weight(.medium))
                Spacer()
                Button {} label: {
                    ZStack{
                        Image(systemName: "chevron.up")
                            .foregroundColor(.blue)
                            .bold()
                        Rectangle()
                            .frame(width: 32, height: 32)
                            .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1).opacity(0.1))
                            .cornerRadius(6)
                    }
                }
            }
            .padding([.leading, .trailing], 16)

            VStack(alignment: .leading){
                Text("Имя")
                    .font(Font.custom("SF Pro Display", size: 12))
                    .kerning(0.12)
                    .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                    .padding(.top, 10)
                    .padding(.leading, 16)
                TextField("Введите имя", text: $phone)
                    .font(Font.custom("SF Pro Display", size: 16).weight(.regular))
                    .kerning(0.75)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.17))
                    .padding(.top, -10)
                    .padding([.leading,.trailing], 16)
                    .padding(.bottom, 10)
            }
            .background(Color(red: 0.96, green: 0.96, blue: 0.98))
            .cornerRadius(10)
            .padding([.leading, .trailing], 16)

            VStack(alignment: .leading){
                Text("Фамилия")
                    .font(Font.custom("SF Pro Display", size: 12))
                    .kerning(0.12)
                    .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                    .padding(.top, 10)
                    .padding(.leading, 16)
                TextField("Введите фамилию", text: $phone)
                    .font(Font.custom("SF Pro Display", size: 16).weight(.regular))
                    .kerning(0.75)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.17))
                    .padding(.top, -10)
                    .padding([.leading,.trailing], 16)
                    .padding(.bottom, 10)
            }
            .background(Color(red: 0.96, green: 0.96, blue: 0.98))
            .cornerRadius(10)
            .padding([.leading, .trailing], 16)

            Group{
                VStack(alignment: .leading){
                    TextField("Дата рождения", text: $phone)
                        .font(Font.custom("SF Pro Display", size: 16).weight(.regular))
                        .kerning(0.17)
                        .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.17))
                        .padding(16)
                }
                VStack(alignment: .leading){
                    TextField("Гражданство", text: $phone)
                        .font(Font.custom("SF Pro Display", size: 16).weight(.regular))
                        .kerning(0.17)
                        .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.17))
                        .padding(16)
                }
                VStack(alignment: .leading){
                    TextField("Номер загранпаспорта", text: $phone)
                        .font(Font.custom("SF Pro Display", size: 16).weight(.regular))
                        .kerning(0.17)
                        .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.17))
                        .padding(16)
                }
                VStack(alignment: .leading){
                    TextField("Срок действия", text: $phone)
                        .font(Font.custom("SF Pro Display", size: 16).weight(.regular))
                        .kerning(0.17)
                        .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.17))
                        .padding(16)
                }
            }
            .background(Color(red: 0.96, green: 0.96, blue: 0.98))
            .cornerRadius(10)
            .padding([.leading, .trailing], 16)
        }
        .padding(.top, 16)
        .padding(.bottom, 16)
        .frame(width: UIScreen.main.bounds.size.width)
        .background(.white)
        .cornerRadius(15)
    }
}

struct TouristView_Previews: PreviewProvider {
    static var previews: some View {
        TouristView()
    }
}
