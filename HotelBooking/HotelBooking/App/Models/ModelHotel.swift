//
//  ModelHotel.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 07.09.2023.
//

import SwiftUI

struct ModelHotel: Decodable, Identifiable {
    let id: String
    let name: String
    let adress: String
    let minimal_price: Int
    let price_for_it: String
    let rating: Int
    let rating_name: String
    let image_urls: [String]
    let about_the_hotel: AboutHotel
}

struct AboutHotel: Decodable {
    let description: String
    let peculiarities: [String]
}
