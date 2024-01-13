//
//  Network.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 07.09.2023.
//

import SwiftUI

class Network {
    var hotels: [ModelHotel] = [ModelHotel]()
    //var shared = Network()
    enum NetworkError: Error {
        case InvalidURL
        case JSONDecodingError
        case RequestError(String)
    }

    struct ResponseErrorMessage: Codable {
        let error: String
    }

    func decodeJSONData<T: Decodable>(data: Data) throws -> T {
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(T.self, from: data)
            return decodedData
        } catch {
            throw NetworkError.JSONDecodingError
        }
    }
}
