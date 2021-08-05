//
//  MedcineModel.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 03.08.2021.
//

import Foundation
import SwiftUI


struct MedcineModel : Identifiable {
    var id : String
    var reminder: String
    var name: String
    var category: String
    var userID: String
}

struct MedcineCard_View : View {
    var medcine : MedcineModel
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5){
                HStack {
                    Text(medcine.name)
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
