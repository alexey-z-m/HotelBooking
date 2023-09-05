//
//  Peculiarities.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 04.09.2023.
//

import SwiftUI

struct Peculiarities: View {
    var tags: [String]
    init(tags: [String]) {
        self.tags = tags
    }
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ForEach(0..<tags.count, id: \.self) { index in
                HStack(spacing: 8) {
                    ForEach(0..<2, id: \.self) { columnIndex in
                        let chipIndex = index * 2 + columnIndex
                        if chipIndex < tags.count {
                            Text(tags[chipIndex])
                                .font(Font.custom("SF Pro Display", size: 16).weight(.medium))
                                .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                .padding(.horizontal, 10)
                                .padding(.vertical, 5)
                                .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                .cornerRadius(5)
                                .multilineTextAlignment(.center)
                        }
                    }
                    Spacer()
                }

            }
        }
        .padding(.leading, 16)
    }
}

struct Peculiarities_Previews: PreviewProvider {
    static var previews: some View {
        Peculiarities(tags:  ["3-я линия", "Платный Wi-Fi в фойе", "30 км до аэропорта", "1 км до пляжа"])
    }
}
