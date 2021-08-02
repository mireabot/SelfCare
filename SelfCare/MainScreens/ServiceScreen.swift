//
//  ServiceScreen.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 29.07.2021.
//

import Foundation
import SwiftUI



struct ServiceHub: View {
    var card : Card
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    self.present.wrappedValue.dismiss()
                }) {
                    Image("back")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                Text(card.title)
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(Color("primary1"))
                Spacer()
            }.padding()
            
            if card.title == "Medical List"{
                NoMedicalRecord()
            }
            if card.title == "Lab Results"{
                NoLabRecord()
            }
            if card.title == "Covid-19"{
                NewCovidRecord()
            }
            
            Spacer()
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}




struct Service_Previews: PreviewProvider {
    static var previews: some View {
        ServiceHub(card: Card(image: "", title: "Covid-19"))
    }
}
