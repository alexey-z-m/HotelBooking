//
//  ModelRoom.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 07.09.2023.
//

import SwiftUI

struct ModelRoom: Decodable, Identifiable {
    let id: Int
    let name: String
    let price: Int
    let price_per: String
    let peculiarities: [String]
    let image_urls: [String]
}
