//
//  CoordinatorView.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 01.09.2023.
//

import SwiftUI

struct CoordinatorView: View {

    @ObservedObject var object: CoordinatorObject

    var body: some View {
        coordinatorView
    }

    @ViewBuilder private var coordinatorView: some View {
        VStack {
            switch object.currentState {
            case .hotel:
                HotelView(viewModel: HotelViewModel(coordinator: CoordinatorObject()))
            case .room:
                RoomView(viewModel: RoomViewModel())
            case .booking:
                BookingView()
            case .paid:
                PaidView()
            }
        }
    }
}
