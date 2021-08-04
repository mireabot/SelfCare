//
//  Login.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 28.07.2021.
//

import Foundation
import SwiftUI
import Firebase

struct LoginScreen : View {
    @State var email = ""
    @State var correct = true
    @State var pass = ""
    @State var visible = false
    @State var error = ""
    @AppStorage("is_logged") var status = false
    var body: some View {
        VStack {
            VStack(spacing: 10){
                Text("Welcome back")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color("primary1"))
                Text("Login")
                    .font(Font.custom("Poppins-SemiBold", size: 32))
                    .foregroundColor(Color("primary1"))
            }
            Spacer()
            
            Image("Splash1")
                .resizable()
                .frame(width: 327, height: 280)
            
            Spacer()
            
            VStack(alignment: .trailing,spacing: 30){
                TextField("Email",text: $email)
                    .autocapitalization(.none)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color("primary6")))
                    .frame(width: UIScreen.main.bounds.width - 40, height: 46)
                HStack(spacing: 15){
                    VStack {
                        if self.visible {
                            TextField("Password",text: $pass)
                                .autocapitalization(.none)
                        }
                        else {
                            SecureField("Password",text: $pass)
                                .autocapitalization(.none)
                        }
                    }
                    
                    Button(action: {
                        self.visible.toggle()
                    }){
                        Image(systemName: self.visible ? "eye.slash.fill" : "eye.fill")
                            .foregroundColor(Color("primary4"))
                    }
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 8).stroke(Color("primary6")))
                .frame(width: UIScreen.main.bounds.width - 40, height: 46)
                
                HStack{
                    Spacer()
                    Button(action: {
                        
                    }){
                        Text("Forgot Password?")
                            .font(Font.custom("Poppins-Medium", size: 14))
                            .foregroundColor(Color("primary1"))
                    }
                }.padding(1)
                
                Button(action: {
                    if self.email != "" && self.pass != ""{
                        
                        Auth.auth().signIn(withEmail: self.email, password: self.pass) { (res, err) in
                            
                            if err != nil{
                                
                                self.error = err!.localizedDescription
                                return
                            }
                            
                            print("success")
                            self.status = true
                        }
                    }
                }){
                    ButtonFilled(buttonLabel: "Login")
                }
            }.padding()
            
            HStack(spacing: 5){
                Text("Don’t have an account?")
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("primary5"))
                Button(action: {
                    
                }){
                    Text("Sign Up")
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color("primary1"))
                }
            }
        }
    }
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
