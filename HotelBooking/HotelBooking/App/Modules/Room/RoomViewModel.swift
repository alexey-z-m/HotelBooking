//
//  RoomViewModel.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 04.09.2023.
//

import SwiftUI

class RoomViewModel: ObservableObject {
    var rooms: [Room] = [Room(name: "1"),Room(name: "2")]
}
struct Room: Identifiable {
    let id: UUID = UUID()
    let name: String
}
