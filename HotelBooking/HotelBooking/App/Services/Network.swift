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

    func getDataByURL(url: String) async throws -> Data {
        if let url = URL(string: url) {
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let statusCode = (response as? HTTPURLResponse)?.statusCode, 200..<299 ~= statusCode else {
                let error: ResponseErrorMessage = try decodeJSONData(data: data)
                throw NetworkError.RequestError(error.error)
            }
            return data
        } else {
            throw(NetworkError.InvalidURL)
        }
    }

    func getHotels(url: String) async throws -> ModelHotel {
        let hotelsData = try await getDataByURL(url: url)
        let hotels: ModelHotel = try decodeJSONData(data: hotelsData)
        return hotels
    }
}
