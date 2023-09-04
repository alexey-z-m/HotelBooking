//
//  BookingView.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 01.09.2023.
//

import SwiftUI

struct BookingView: View {
    var body: some View {
        Text("BookingView")
        Button  {
            CoordinatorObject().transition()
        } label: {
            Text("to Paid")
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}
