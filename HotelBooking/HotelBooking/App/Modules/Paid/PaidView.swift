//
//  PaidView.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 01.09.2023.
//

import SwiftUI

struct PaidView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                ZStack{
                    Circle()
                        .frame(width: 94, height: 94)
                        .foregroundColor(Color(red: 0.96, green: 0.96, blue: 0.98))
                    Text(" 🎉")
                        .font(.system(size: 44))
                }
                .padding(.bottom, 32)
                Text("Ваш заказ принят в работу")
                    .font(Font.custom("SF Pro Display", size: 22).weight(.medium))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .frame(width: 343, alignment: .top)
                    .padding(.bottom, 20)
                Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                    .font(Font.custom("SF Pro Display", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                    .frame(width: 329, alignment: .top)
                Spacer()
            }
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.backward")
                                .font(.system(size: 14,weight: .medium))
                                .padding(.leading, 8)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
            BottomPanel()
        }
    }
}

struct PaidView_Previews: PreviewProvider {
    static var previews: some View {
        PaidView()
    }
}
