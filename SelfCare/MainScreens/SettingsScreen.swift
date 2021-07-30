//
//  ProfileScreen.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 28.07.2021.
//

import Foundation
import SwiftUI


struct SettingsScreen : View {
    var body: some View {
        VStack {
            HStack {
                Text("Settings")
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(Color("primary1"))
                
                Spacer()
            }.padding()
            
//            Spacer()
            
            VStack {
                ForEach(settings){ settings in
                    SettingsView(settings: settings)
                }
            }
            
            Spacer()
        }
    }
}


struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
