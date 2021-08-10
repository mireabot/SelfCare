//
//  DiaryModel.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 10.08.2021.
//

import Foundation
import SwiftUI


struct CovidDiaryModel : Identifiable {
    let id = UUID().uuidString
    let date : String
    let temp : String
    let condition : String
}

var diary_data = [
    CovidDiaryModel(date: "Wed, 7 Nov", temp: "80 F", condition: "Badly"),
    CovidDiaryModel(date: "Thu, 8 Nov", temp: "78 F", condition: "Not Bad")
]


struct DiaryView : View {
    var diary_content : CovidDiaryModel
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0){
                HStack {
                    Text(diary_content.date)
                        .font(Font.custom("Poppins-Medium", size: 16))
                        .foregroundColor(Color("primary1"))
                    Spacer()
                }.padding()
                HStack(spacing: 10) {
                    Text("Temperature: \(diary_content.temp)")
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("primary1"))
                    Text("Condition: \(diary_content.condition)")
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("primary1"))
                }.padding()
            }
        }
        .frame(width: UIScreen.main.bounds.width - 40, height: 103)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
    }
}
