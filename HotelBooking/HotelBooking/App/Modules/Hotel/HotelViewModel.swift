//
//  HotelViewModel.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 01.09.2023.
//

import SwiftUI

class HotelViewModel: ObservableObject {

    var coordinator: CoordinatorObject

    init(coordinator: CoordinatorObject) {
        self.coordinator = coordinator
    }

    func transition() {
        coordinator.transition()
    }
}

