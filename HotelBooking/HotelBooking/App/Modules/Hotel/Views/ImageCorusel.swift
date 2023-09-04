//
//  ImageCorusel.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 02.09.2023.
//

import SwiftUI

struct ImageCorusel: View {
    var body: some View {
        TabView {
            AsyncImage(url: URL(string: "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }

            AsyncImage(url: URL(string: "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .frame(width: UIScreen.main.bounds.size.width - 32)
        .frame(height: 260)
        .cornerRadius(15)
    }
}

struct ImageCorusel_Previews: PreviewProvider {
    static var previews: some View {
        ImageCorusel()
    }
}
