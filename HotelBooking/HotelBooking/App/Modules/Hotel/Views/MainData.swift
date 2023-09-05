//
//  MainData.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 02.09.2023.
//

import SwiftUI

struct MainData: View {
    var body: some View {
        VStack (spacing: 8){
            HStack {
                Button {} label: {
                    Text("★ 5 Превосходно")
                        .font(Font.custom("SF Pro Display", size: 17).weight(.medium))
                        .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
                        .padding([.leading, .trailing], 10)
                        .padding([.top, .bottom], 5)
                        .background {
                            Rectangle()
                                .foregroundColor(Color(red: 1, green: 0.78, blue: 0).opacity(0.2))
                                .cornerRadius(5)
                        }
                    Spacer()
                }
                .padding(.leading, 16)
            }
            HStack {
                Text("Steigenberger Makadi")
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.black)
                    .font(Font.custom("SF Pro Display", size: 22).weight(.medium))
                    .padding(.leading, 16)
                Spacer()
            }
            HStack {
                Button{} label: {
                    Text("Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                        .multilineTextAlignment(.leading)
                        .font(Font.custom("SF Pro Display", size: 14).weight(.medium))
                        .padding(.leading, 16)
                }
                Spacer()
            }
            HStack {
                Text("от 134 673 ₽")
                    //.font(.system(size: 30, weight: .medium))
                    .font(Font.custom("SF Pro Display", size: 30).weight(.semibold))
                    .foregroundColor(.black)
                    .padding(.leading, 16)
                Text("за тур с перелетом")
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 16))
                    .foregroundColor(.secondary)
                Spacer()
            }
        }
    }
}

struct MainData_Previews: PreviewProvider {
    static var previews: some View {
        MainData()
    }
}
