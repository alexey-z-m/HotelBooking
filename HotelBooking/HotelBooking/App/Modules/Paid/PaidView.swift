//
//  PaidView.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 01.09.2023.
//

import SwiftUI

struct PaidView: View {
    var body: some View {
        Text("PaidView")
        Button  {
            CoordinatorObject().transition()
        } label: {
            Text("to Hotel")
        }
        Text("\(CoordinatorObject().currentState.rawValue)")
    }
}

struct PaidView_Previews: PreviewProvider {
    static var previews: some View {
        PaidView()
    }
}
