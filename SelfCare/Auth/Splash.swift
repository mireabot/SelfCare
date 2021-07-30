//
//  Splash.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 28.07.2021.
//

import Foundation
import SwiftUI


struct SplashScreen : View {
    @State var login = false
    @State var signup = false
    var body: some View {
        VStack {
            VStack(spacing: 10){
                Text("Welcome to")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color("primary1"))
                Text("Self Care")
                    .font(Font.custom("Poppins-SemiBold", size: 32))
                    .foregroundColor(Color("primary1"))
            }
            Spacer()
            
            Image("Splash1")
            
            Spacer()
            
            VStack(spacing: 15){
                Button(action: {
                    self.signup.toggle()
                }) {
                    ButtonFilled(buttonLabel: "Sign Up")
                }
                .fullScreenCover(isPresented: $signup){
                    SignUpScreen()
                }
                Button(action: {
                    self.login.toggle()
                }) {
                    ButtonNonFilled(buttonLabel: "Login")
                }
                .fullScreenCover(isPresented: $login){
                    LoginScreen()
                }
            }
        }
    }
}




struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
