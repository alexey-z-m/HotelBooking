//
//  ModelBookingDetails.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 07.09.2023.
//

import SwiftUI

struct ModelBookingDetails: Decodable, Identifiable {
    let id: Int
    let hotel_name: String
    let hotel_adress: String
    let horating: Int
    let rating_name: String
    let departure: String
    let arrival_countr: String
    let tour_date_start: String
    let tour_date_stop: String
    let number_of_nights: Int
    let room: String
    let nutrition: String
    let tour_price: Int
    let fuel_charge: Int
    let service_charge: Int
}
