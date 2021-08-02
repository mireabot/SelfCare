//
//  SettingsModel.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI


struct SettingsModel : Identifiable {
    let id = UUID().uuidString
    let image: String
    let title: String
}

let settings = [
    SettingsModel(image: "account", title: "Account"),
    SettingsModel(image: "notification", title: "Notification"),
    SettingsModel(image: "appearance", title: "Appearance"),
    SettingsModel(image: "privacy & security", title: "Privacy & Security"),
    SettingsModel(image: "sound", title: "Sound"),
    SettingsModel(image: "language", title: "Language")
]
struct SettingsView : View {
    var settings: SettingsModel
    @State var show = false
    var body: some View {
        HStack {
            Image(settings.image)
            
            Text(settings.title)
                .font(Font.custom("Poppins-Regular", size: 16))
                .foregroundColor(Color("primary2"))
            
            Spacer()
            
            Button(action: {
//                self.show.toggle()
            }) {
                Image(systemName: "chevron.right")
                    .font(.system(size: 16))
                    .foregroundColor(Color("primary4"))
            }
        }
        .onTapGesture {
            self.show.toggle()
        }
        .fullScreenCover(isPresented: $show){
            SettingsHub(settings: settings)
        }
        .padding()
    }
}
