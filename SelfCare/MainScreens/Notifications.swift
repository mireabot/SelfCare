//
//  Notifications.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI


struct NotificationsScreen : View {
    var body: some View {
        VStack {
            HStack {
                Text("Notifications")
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(Color("primary1"))
                
                Spacer()
            }.padding()
            
            Spacer()
        }
    }
}
