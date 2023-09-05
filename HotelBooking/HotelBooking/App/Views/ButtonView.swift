//
//  Button.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 05.09.2023.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        NavigationLink  {
            //RoomView(viewModel: RoomViewModel())
            BookingView()
        } label: {
            ZStack{
                Rectangle()
                    .background(.blue)
                    .cornerRadius(15)
                    .frame(maxWidth: UIScreen.main.bounds.size.width - 32, maxHeight: 48)
                Text("К выбору номера")
                    .foregroundColor(.white)
                    .font(Font.custom("SF Pro Display", size: 16).weight(.medium))
            }
        }
    }

}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
