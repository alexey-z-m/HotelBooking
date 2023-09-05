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

                VStack(alignment: .leading, spacing: 16) {
                    HStack {
                        Text("Первый турист")
                            .font(Font.custom("SF Pro Display", size: 22).weight(.medium))
                        Spacer()
                        Button {} label: {
                            ZStack{
                                Image(systemName: "chevron.up")
                                    .foregroundColor(.blue)
                                    .bold()
                                Rectangle()
                                    .frame(width: 32, height: 32)
                                    .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1).opacity(0.1))
                                    .cornerRadius(6)
                            }
                        }
                        .padding(.trailing, 16)
                    }
                    .padding(.leading, 16)

                    VStack(alignment: .leading){
                        Text("Имя")
                            .font(Font.custom("SF Pro Display", size: 12))
                            .kerning(0.12)
                            .foregroundColor(Color(red: 0.66, green: 0.67, blue: 0.72))
                            .padding(.top, 10)
                            .padding(.leading, 16)
                        TextField("Введите имя", text: $phone)
                            .font(Font.custom("SF Pro Display", size: 16).weight(.regular))
                            .kerning(0.75)
                            .foregroundColor(Color(red: 0.08, green: 0.08, blue: 0.17))
                            .padding(.top, -10)
                            .padding([.leading,.trailing], 16)
                            .padding(.bottom, 16)
                    }
                    .background(Color(red: 0.96, green: 0.96, blue: 0.98))
                    .cornerRadius(10)
                    .padding([.leading, .trailing], 16)
                }
                .padding(.top, 16)
                .padding(.bottom, 16)
                .frame(width: UIScreen.main.bounds.size.width)
                .background(.white)
                .cornerRadius(15)
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
                                .font(.system(size: 14,weight: .medium))
                                .padding(.leading, 8)
                                .foregroundColor(.black)
                        }
                    }
                }
            }
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
