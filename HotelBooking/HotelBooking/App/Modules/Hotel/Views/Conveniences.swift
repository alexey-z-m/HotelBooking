//
//  Сonveniences.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 02.09.2023.
//

import SwiftUI

struct Conveniences: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Image("emoji-happy")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(12)
                VStack(alignment: .leading) {
                    Text("Удобства")
                        .font(.system(size: 16, weight: .medium))
                    Text("Самое необходимое")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                }
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding([.leading, .trailing, .top], 15)
            Divider()
                .padding(.leading, 31+24+12)
                .padding(.trailing, 15)
            HStack {
                Image("tick-square")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(12)
                VStack(alignment: .leading) {
                    Text("Что включено")
                        .font(.system(size: 16, weight: .medium))
                    Text("Самое необходимое")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                }
                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding([.leading, .trailing], 15)
            Divider()
                .padding(.leading, 31+24+12)
                .padding(.trailing, 15)
            HStack {
                Image("close-square")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .padding(12)
                VStack(alignment: .leading) {
                    Text("Что не включено")
                        .font(.system(size: 16, weight: .medium))
                    Text("Самое необходимое")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                }

                Spacer()
                Image(systemName: "chevron.right")
            }
            .padding([.leading, .trailing, .bottom], 15)
        }
        .background(
            Rectangle()
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.99))
                .cornerRadius(15)
        )
        .padding(16)
    }
}

struct Conveniences_Previews: PreviewProvider {
    static var previews: some View {
        Conveniences()
    }
}
