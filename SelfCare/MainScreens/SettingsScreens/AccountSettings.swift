//
//  AccountSettings.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI
import Firebase

struct AccountSettings : View {
    @AppStorage("is_logged") var status = false
    @State var user_ID = ""
    var body: some View {
        VStack {
            
            Spacer()
            
            VStack(spacing: 15) {
                Text("User ID: \(user_ID)")
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("primary5"))
                
                Button(action: {
                    try? Auth.auth().signOut()
                    withAnimation{status = false}
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
        .onAppear{
            guard let retrive1  = UserDefaults.standard.string(forKey: "UserID") else { return }
            self.user_ID = retrive1
        }
    }
}
