//
//  WelcomeScreen.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI
import Firebase


struct WelcomeScreen : View {
    @State var weight = ""
    @State var height = ""
    @State var birthday = ""
    @State var name = ""
    @State var email = ""
    @AppStorage("is_logged") var status = false
    @StateObject var FirebaseService = AccountViewModel()
    var body: some View {
        VStack {
            HStack {
                Text("Tell about yourself")
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(Color("primary1"))
                Spacer()
            }.padding()
            
            Spacer()
            
            ZStack {
                Circle()
                    .fill(Color("primary6"))
                    .frame(width: 112, height: 112)
                Image("Avatar_Default")
            }.padding()
            Spacer()
            VStack(spacing: 25){
                TextField("My weight",text: $weight)
                    .autocapitalization(.none)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color("primary6")))
                    .frame(width: UIScreen.main.bounds.width - 40, height: 46)
                TextField("My height",text: $height)
                    .autocapitalization(.none)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color("primary6")))
                    .frame(width: UIScreen.main.bounds.width - 40, height: 46)
                TextField("My birthday",text: $birthday)
                    .autocapitalization(.none)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color("primary6")))
                    .frame(width: UIScreen.main.bounds.width - 40, height: 46)
            }
            Button(action: {
                FirebaseService.RegisterUser(name: name, weight: weight, height: height,email: email,birthday: birthday)
                self.status = true
            }) {
                ButtonFilled(buttonLabel: "Next")
            }.padding()
            HStack(spacing: 5){
                Text("You can do it later in your profile")
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("primary5"))
                Button(action: {
                    
                }){
                    Text("Skip")
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color("primary1"))
                }
            }
            Spacer()
        }.onAppear{
            guard let retrive1  = UserDefaults.standard.string(forKey: "Name") else { return }
            self.name = retrive1
            guard let retrive2  = UserDefaults.standard.string(forKey: "Email") else { return }
            self.email = retrive2
        }
    }
}




struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
