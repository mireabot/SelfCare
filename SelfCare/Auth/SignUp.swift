//
//  SignUp.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 28.07.2021.
//

import Foundation
import SwiftUI
import Firebase

struct SignUpScreen : View {
    @State var email = ""
    @State var name = ""
    @State var correct = true
    @State var pass = ""
    @State var visible = false
    @State var error = ""
    @State var next = false
    @AppStorage("is_logged") var status = false
    var body: some View {
        VStack {
            VStack(spacing: 10){
                Text("Hello Beautiful")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color("primary1"))
                Text("Sign Up")
                    .font(Font.custom("Poppins-SemiBold", size: 32))
                    .foregroundColor(Color("primary1"))
            }
            Spacer()
            
            Image("Splash1")
                .resizable()
                .frame(width: 327, height: 280)
            
            Spacer()
            
            VStack(alignment: .trailing,spacing: 30){
                TextField("Full Name",text: $name)
                    .autocapitalization(.none)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 8).stroke(Color("primary6")))
                    .frame(width: UIScreen.main.bounds.width - 40, height: 46)
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
                
                Button(action: {
                    if self.email != ""{
                        
                        if self.pass != ""{
                            
                            Auth.auth().createUser(withEmail: self.email, password: self.pass) { (res, err) in
                                
                                if err != nil{
                                    
                                    self.error = err!.localizedDescription
                                    self.correct = false
                                    return
                                }
                                
                                print("success")
                                self.next.toggle(
                                )
                                print("Success = \(res!.user.uid)")
                                // After Logging in Fetching Data
                                UserDefaults.standard.setValue(res!.user.uid, forKey: "UserID")
                            }
                        }
                    }
                    UserDefaults.standard.set(self.name, forKey: "Name")
                    UserDefaults.standard.set(self.email, forKey: "Email")
                }){
                    ButtonFilled(buttonLabel: "Sign Up")
                }
                .fullScreenCover(isPresented: $next){
                    WelcomeScreen()
                }
            }.padding()
            
            HStack(spacing: 5){
                Text("Already have an account?")
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("primary5"))
                Button(action: {
                    
                }){
                    Text("Login")
                        .font(Font.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color("primary1"))
                }
            }
        }
    }
}


struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}

