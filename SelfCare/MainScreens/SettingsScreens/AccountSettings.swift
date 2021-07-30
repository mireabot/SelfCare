//
//  AccountSettings.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI


struct AccountSettings : View {
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack(spacing: 15) {
                Text("User ID: 4934949949599")
                    .foregroundColor(Color("primary5"))
                
                Button(action: {
                    
                }){
                    ButtonFilled(buttonLabel: "Log out")
                }
                
                Button(action: {
                    
                }){
                    ButtonNonFilledColor(buttonLabel: "Delete account", color: "error")
                }
            }
            
            Spacer()
        }
    }
}
