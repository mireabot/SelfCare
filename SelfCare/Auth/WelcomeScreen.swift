//
//  WelcomeScreen.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI



struct WelcomeScreen : View {
    @State var weight = ""
    @State var height = ""
    @State var birthday = ""
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
        }
    }
}




struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
