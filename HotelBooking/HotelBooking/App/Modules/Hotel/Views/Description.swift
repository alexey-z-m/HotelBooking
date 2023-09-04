//
//  Description.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 02.09.2023.
//

import SwiftUI

struct Description: View {
    var body: some View {
        HStack {
            Text("Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!")
                .multilineTextAlignment(.leading)
                .foregroundColor(.black.opacity(0.9))
                .font(.system(size: 16))
                .padding([.leading, .bottom, .trailing], 16)
            Spacer()
        }
    }
}

struct Description_Previews: PreviewProvider {
    static var previews: some View {
        Description()
    }
}
