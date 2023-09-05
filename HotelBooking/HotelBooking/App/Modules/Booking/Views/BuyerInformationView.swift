//
//  BuyerInformationView.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 05.09.2023.
//

import SwiftUI

struct BuyerInformationView: View {
    @State private var phone: String = ""//"+7 (951) 555-99-00"
    var body: some View {
        VStack {
            HStack {
                Text("Информация о покупателе")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 22, weight: .medium))
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                Spacer()
            }
            VStack(alignment: .leading){
                Text("Номер телефона")
                    .font(Font.custom("SF Pro Display", size: 12))
                    .kerning(0.12)
                    .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                    .padding(.top, 10)
                    .padding(.leading, 16)
                TextField("+7 (---) --- -- --", text: $phone)
                    .font(Font.custom("SF Pro Display", size: 16).weight(.regular))
                    .kerning(0.75)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.17))
                    .padding(.top, -10)
                    .padding([.leading,.trailing], 16)
                    .padding(.bottom, 16)
            }
            .background(Color(red: 0.96, green: 0.96, blue: 0.98))
            .cornerRadius(10)
            .padding([.leading, .trailing], 16)
            VStack(alignment: .leading){
                Text("Почта")
                    .font(Font.custom("SF Pro Display", size: 12))
                    .kerning(0.12)
                    .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                    .padding(.top, 10)
                    .padding(.leading, 16)
                TextField("Введите email", text: $phone)
                    .font(Font.custom("SF Pro Display", size: 16).weight(.regular))
                    .kerning(0.75)
                    .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.17))
                    .padding(.top, -10)
                    .padding([.leading,.trailing], 16)
                    .padding(.bottom, 16)
            }
            .background(Color(red: 0.96, green: 0.96, blue: 0.98))
            .cornerRadius(10)
            .padding([.leading, .trailing], 16)

            Text("Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту")
                .font(Font.custom("SF Pro Display", size: 14).weight(.regular))
                .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                .padding([.leading, .trailing], 16)


        }
        .padding(.top, 16)
        .padding(.bottom, 16)
        .frame(width: UIScreen.main.bounds.size.width)
        .background(.white)
        .cornerRadius(15)
    }
}

struct BuyerInformationView_Previews: PreviewProvider {
    static var previews: some View {
        BuyerInformationView()
    }
}
