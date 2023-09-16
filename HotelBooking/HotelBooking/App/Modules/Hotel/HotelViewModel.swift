//
//  HotelViewModel.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 01.09.2023.
//

import SwiftUI

class HotelViewModel: ObservableObject {
    var hotelModel: ModelHotel
    init() {
        Task{
            let temp = try await Network().getHotels(url: "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3")
            DispatchQueue.main.async {
                self.hotelModel = temp
            }
        }
    }

    var data: Data? = nil


}

