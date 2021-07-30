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
    var body: some View {
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
            
            VStack {
                ZStack {
                    Circle()
                        .fill(Color("primary6"))
                        .frame(width: 112, height: 112)
                    Image("Avatar_Default")
                }
                
                Text("Julia Mario")
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(Color("primary1"))
                Text("juliamario@mail.com")
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
                        Text("180 lb")
                            .font(Font.custom("Poppins-Medium", size: 14))
                            .foregroundColor(Color("primary1"))
                        Spacer()
                        Text("My height")
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color("primary1"))
                        Text("6'11")
                            .font(Font.custom("Poppins-Medium", size: 14))
                            .foregroundColor(Color("primary1"))
                    }.padding()
                    HStack {
                        Text("My birthday")
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color("primary1"))
                        Text("02/19/2002")
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


struct Pfofile_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}
