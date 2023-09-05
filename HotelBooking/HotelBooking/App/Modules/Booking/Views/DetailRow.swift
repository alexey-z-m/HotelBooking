//
//  DetailRow.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 05.09.2023.
//

import SwiftUI

struct DetailRow: View {
    var key: String
    var value: String
    init(key: String, value: String) {
        self.key = key
        self.value = value
    }
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Text(key)
                .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                .font(.system(size: 16))
                .padding(.leading, 16)
            Spacer()
            Text(value)
                .frame(width: 203,alignment: .topLeading)
                .foregroundColor(.black)
                .font(.system(size: 16))
                .padding(.trailing, 16)
        }
    }
}

struct DetailRow_Previews: PreviewProvider {
    static var previews: some View {
        DetailRow(key: "Номер", value: "Стандартный с видом на бассейн или сад")
    }
}
