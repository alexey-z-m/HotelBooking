//
//  BottomPanel.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 02.09.2023.
//

import SwiftUI

struct BottomPanel: View {
    
    var body: some View {
        ZStack {
            ButtonView()
                .frame(width: UIScreen.main.bounds.size.width)
                .background(
                    Rectangle()
                        .inset(by: -0.5)
                        .stroke(Color(red: 0.91, green: 0.91, blue: 0.93), lineWidth: 1)
                        .padding(.bottom, -100)
                        .padding(.top, -8)
                    
                    
                )
        }
    }
}

struct BottomPanel_Previews: PreviewProvider {
    static var previews: some View {
        BottomPanel()
    }
}
