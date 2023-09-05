//
//  RoomView.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 01.09.2023.
//

import SwiftUI

struct RoomView: View {
    @Environment(\.dismiss) private var dismiss
    @ObservedObject var viewModel: RoomViewModel
    init(viewModel: RoomViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                ForEach(viewModel.rooms) { index in
                    VStack(alignment: .leading) {
                        ImageCorusel()
                            .padding(.leading, 16)
                        RoomData()
                        ButtonView()
                            .frame(height: 48)
                            .padding(.leading, 16)
                        Spacer()
                    }
                    .padding(.top, 16)
                    .padding(.bottom, 16)
                    .frame(width: UIScreen.main.bounds.size.width)
                    .background(.white)
                    .cornerRadius(15)
                }
            }
            .background(Color(red: 0.96, green: 0.96, blue: 0.98))
            .navigationBarBackButtonHidden()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "chevron.backward")
                                .font(Font.custom("SF Pro Display", size: 14).weight(.medium))
                                .padding(.leading, 8)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
            Spacer()
            BottomPanel()
        }
        .navigationTitle("какой то отель")
        .background(.white)
    }
}

struct RoomView_Previews: PreviewProvider {
    static var previews: some View {
        RoomView(viewModel: RoomViewModel())
            .navigationTitle("какой то отель")
    }
}
