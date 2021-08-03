//
//  MedcineModel.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 03.08.2021.
//

import Foundation
import SwiftUI


struct MedcineModel : Identifiable {
    let id = UUID().uuidString
    let reminder: String
    let title: String
    let category: String
}

let medcine_data = [
    MedcineModel(reminder: "ON", title: "Xyzal Allergy 24hr Tablets", category: "Allergy & Asthma")
]


struct MedcineCard_View : View {
    var medcine : MedcineModel
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5){
                HStack {
                    Text(medcine.title)
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("primary1"))
                }
                Text(medcine.category)
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("primary3"))
                HStack {
                    Text("Reminder:")
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color("primary3"))
                    Text(medcine.reminder)
                        .font(Font.custom("Poppins-Medium", size: 14))
                        .foregroundColor(Color("primary1"))
                }
            }
        Spacer()
            
        }.padding()
        .frame(width: UIScreen.main.bounds.width - 40, height: 104)
        .background(RoundedRectangle(cornerRadius: 8).stroke(Color("primary2")))
    }
}
