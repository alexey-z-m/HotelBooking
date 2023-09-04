//
//  CoordinatorObject.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 01.09.2023.
//

import SwiftUI

class CoordinatorObject: ObservableObject {

    @Published var currentState: State

    enum State: String {
        case hotel
        case room
        case booking
        case paid
    }

    init() {
        currentState = .hotel
    }

    func transition() {
        switch currentState {
        case .hotel:
            currentState = .room
        case .room:
            currentState = .booking
        case .booking:
            currentState = .paid
        case .paid:
            currentState = .hotel
        }
    }
}
