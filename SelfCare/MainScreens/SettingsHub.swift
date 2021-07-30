//
//  SettingsHub.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI



struct SettingsHub : View {
    var settings : SettingsModel
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
                Text(settings.title)
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(Color("primary1"))
                Spacer()
            }.padding()
            
            Spacer()
            
            if settings.title == "Account" {
                AccountSettings()
            }
            
            if settings.title == "Appearance" {
                AppearanceScreen()
            }
            
            if settings.title == "Privacy & Security" {
                PrivacyScreen()
            }
            
            if settings.title == "Language" {
                LanguageScreen()
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}
