//
//  BookingView.swift
//  HotelBooking
//
//  Created by Alexey Zablotskiy on 01.09.2023.
//

import SwiftUI

struct BookingView: View {
    @Environment(\.dismiss) private var dismiss
    @State private var phone: String = ""//"+7 (951) 555-99-00"
    var body: some View {
        NavigationStack {
            ScrollView {
                BookingDetailMainView()
                VStack(alignment: .leading, spacing: 16) {
                    DetailRow(key: "Вылет из", value: "Санкт-Петербург")
                    DetailRow(key: "Страна, город", value: "Египет, Хургада")
                    DetailRow(key: "Даты", value: "19.09.2023 – 27.09.2023")
                    DetailRow(key: "Кол-во ночей", value: "7 ночей")
                    DetailRow(key: "Отель", value: "Steigenberger Makadi")
                    DetailRow(key: "Номер", value: "Стандартный с видом на бассейн или сад")
                    DetailRow(key: "Питание", value: "Все включено")
                }
                .padding(.top, 16)
                .padding(.bottom, 16)
                .frame(width: UIScreen.main.bounds.size.width)
                .background(.white)
                .cornerRadius(15)

                BuyerInformationView()
                TouristView()

                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Text("Добавить туриста")
                            .font(Font.custom("SF Pro Display", size: 22).weight(.medium))
                        Spacer()
                        Button {} label: {
                            ZStack{
                                Rectangle()
                                    .frame(width: 32, height: 32)
                                    .foregroundColor(.blue)
                                    .cornerRadius(6)
                                Image(systemName: "plus")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                    }
                    .padding([.leading, .trailing], 16)
                }
                .padding(.top, 16)
                .padding(.bottom, 16)
                .frame(width: UIScreen.main.bounds.size.width)
                .background(.white)
                .cornerRadius(15)

                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Text("Тур")
                            .font(Font.custom("SF Pro Display", size: 16))
                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                        Spacer()
                        Text("186 600 ₽")
                            .font(Font.custom("SF Pro Display", size: 16))
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.black)
                            .frame(width: 132, alignment: .topTrailing)
                    }
                    .padding([.leading, .trailing], 16)
                    HStack {
                        Text("Топливный сбор")
                            .font(Font.custom("SF Pro Display", size: 16))
                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                        Spacer()
                        Text("9 300 ₽")
                            .font(Font.custom("SF Pro Display", size: 16))
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.black)
                            .frame(width: 132, alignment: .topTrailing)
                    }
                    .padding([.leading, .trailing], 16)
                    HStack {
                        Text("Сервисный сбор")
                            .font(Font.custom("SF Pro Display", size: 16))
                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                        Spacer()
                        Text("2 136 ₽")
                            .font(Font.custom("SF Pro Display", size: 16))
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.black)
                            .frame(width: 132, alignment: .topTrailing)
                    }
                    .padding([.leading, .trailing], 16)
                    HStack {
                        Text("К оплате")
                            .font(Font.custom("SF Pro Display", size: 16))
                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                        Spacer()
                        Text("198 036 ₽")
                            .font(Font.custom("SF Pro Display", size: 16).weight(.semibold))
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.blue)
                            .frame(width: 132, alignment: .topTrailing)
                    }
                    .padding([.leading, .trailing], 16)
                }
                .padding(.top, 16)
                .padding(.bottom, 16)
                .frame(width: UIScreen.main.bounds.size.width)
                .background(.white)
                .cornerRadius(15)
                
            }
            .padding(.bottom, 8)
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
                                .font(.system(size: 14,weight: .medium))
                                .padding(.leading, 8)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
            BottomPanel()
        }
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView()
    }
}

extension String {
    func applyPatternOnNumbers(pattern: String, replacementCharacter: Character) -> String {
        var pureNumber = self.replacingOccurrences( of: "[^0-9]", with: "", options: .regularExpression)
        for index in 0 ..< pattern.count {
            guard index < pureNumber.count else { return pureNumber }
            let stringIndex = String.Index(utf16Offset: index, in: pattern)
            let patternCharacter = pattern[stringIndex]
            guard patternCharacter != replacementCharacter else { continue }
            pureNumber.insert(patternCharacter, at: stringIndex)
        }
        return pureNumber
    }
}
