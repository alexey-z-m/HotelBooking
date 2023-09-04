//
//  HotelView.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 01.09.2023.
//

import SwiftUI

struct HotelView: View {

    @ObservedObject var viewModel: HotelViewModel

    init(viewModel: HotelViewModel) {
        self.viewModel = viewModel
        UIScrollView.appearance().bounces = false
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Text("Отель")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.black)
                        .padding(8)
                    ImageCorusel()
                    MainData()
                }
                .padding(.top, 60)
                .padding(.bottom, 16)
                .frame(width: UIScreen.main.bounds.size.width)
                .background(.white)
                .cornerRadius(15)

                VStack {
                    HStack {
                        Text("Об отеле")
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.black)
                            .font(.system(size: 22, weight: .medium))
                            .padding(16)
                        Spacer()
                    }
                    Peculiarities()
                    Description()
                    Conveniences()
                }
                .padding(.bottom, 16)
                .frame(width: UIScreen.main.bounds.size.width)
                .background(.white)
                .cornerRadius(15)

            }
            .ignoresSafeArea()
            .background(Color(red: 0.96, green: 0.96, blue: 0.98))
            Spacer()
            BottomPanel()
        }
    }
}

struct HotelView_Previews: PreviewProvider {
    static var previews: some View {
        HotelView(viewModel: HotelViewModel(coordinator: CoordinatorObject()))
    }
}
