//
//  ProfileScreen.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI


struct ProfileScreen : View {
    @Environment(\.presentationMode) var present
    @State var userID = ""
    @StateObject var FirebaseService = AccountViewModel()
    @State var show = false
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button(action: {
                        self.present.wrappedValue.dismiss()
                    }) {
                        Image("back")
                            .resizable()
                            .frame(width: 24, height: 24)
                    }
                    Text("My profile")
                        .font(Font.custom("Poppins-SemiBold", size: 24))
                        .foregroundColor(Color("primary1"))
                    
                    Spacer()
                }.padding()
                
                Spacer()
                
                if FirebaseService.users.isEmpty {
                    
                }
                
                
                ForEach(FirebaseService.users){ user in
                    if user.id == userID {
                        VStack {
                            ZStack {
                                Circle()
                                    .fill(Color("primary6"))
                                    .frame(width: 112, height: 112)
                                Image("Avatar_Default")
                            }
                            
                            Text(user.name)
                                .font(Font.custom("Poppins-SemiBold", size: 24))
                                .foregroundColor(Color("primary1"))
                            Text(user.email)
                                .font(Font.custom("Poppins-Regular", size: 12))
                                .foregroundColor(Color("primary3"))
                        }.padding()
                        
                        HStack {
                            VStack(alignment: .leading, spacing: 0){
                                HStack {
                                    Text("Medical ID")
                                        .font(Font.custom("Poppins-SemiBold", size: 20))
                                        .foregroundColor(Color("primary1"))
                                    Image("heart")
                                    Spacer()
                                }.padding()
                                HStack {
                                    Text("My weight")
                                        .font(Font.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("primary1"))
                                    Text("\(user.weight) lb")
                                        .font(Font.custom("Poppins-Medium", size: 14))
                                        .foregroundColor(Color("primary1"))
                                    Spacer()
                                    Text("My height")
                                        .font(Font.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("primary1"))
                                    Text(user.height)
                                        .font(Font.custom("Poppins-Medium", size: 14))
                                        .foregroundColor(Color("primary1"))
                                }.padding()
                                HStack {
                                    Text("My birthday")
                                        .font(Font.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("primary1"))
                                    Text(user.date)
                                        .font(Font.custom("Poppins-Medium", size: 14))
                                        .foregroundColor(Color("primary1"))
                                    Spacer()
                                }.padding()
                            }
                                
                        }
                        .frame(width: UIScreen.main.bounds.width - 40, height: 187)
                        .background(RoundedRectangle(cornerRadius: 8).stroke(Color("primary4")))
                        
                        Button(action: {
                            
                        }){
                            ButtonFilled(buttonLabel: "Edit")
                            
                        }.padding()
                        
                        Spacer()
                    }
                }
                
            }
        }.onAppear{
            FirebaseService.fetchUsers()
            guard let retrive1  = UserDefaults.standard.string(forKey: "UserID") else { return }
            self.userID = retrive1
        }
    }
}


struct Pfofile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
