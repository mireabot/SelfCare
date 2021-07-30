//
//  PrivacyScreen.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI


struct PrivacyScreen : View {
    @State var Pin = false
    @State var FaceID = false
    @State var None = true
    @State var method = "None"
    var body: some View {
        VStack {
            
            Header(text: "Choose enter method", color: "primary4", size: 16,font: "Poppins-Medium")
            
            VStack {
                HStack {
                    Text("Pin")
                        .font(Font.custom("Poppins-Medium", size: 14))
                        .foregroundColor(Color("primary1"))
                    
                    Spacer()
                    
                    Button(action: {
                        self.Pin.toggle()
                        self.method = "Pin"
                    }) {
                        ZStack {
                            Circle()
                                .fill(method == "Pin" ? Color("primary1") : Color.black.opacity(0.04))
                                .frame(width: 30, height: 30)
                            Image(systemName: "checkmark")
                                .font(.system(size: 14))
                                .foregroundColor(method == "Pin" ? Color.white : Color.black.opacity(0.04))
                        }
                    }
                }.padding()
                HStack {
                    Text("FaceID")
                        .font(Font.custom("Poppins-Medium", size: 14))
                        .foregroundColor(Color("primary1"))
                    
                    Spacer()
                    
                    Button(action: {
                        self.FaceID.toggle()
                        self.method = "FaceID"
                    }) {
                        ZStack {
                            Circle()
                                .fill(method == "FaceID" ? Color("primary1") : Color.black.opacity(0.04))
                                .frame(width: 30, height: 30)
                            Image(systemName: "checkmark")
                                .font(.system(size: 14))
                                .foregroundColor(method == "FaceID" ? Color.white : Color.black.opacity(0.04))
                        }
                    }
                }.padding()
                HStack {
                    Text("None")
                        .font(Font.custom("Poppins-Medium", size: 14))
                        .foregroundColor(Color("primary1"))
                    
                    Spacer()
                    
                    Button(action: {
                        self.None.toggle()
                        self.method = "None"
                    }) {
                        ZStack {
                            Circle()
                                .fill(method == "None" ? Color("primary1") : Color.black.opacity(0.04))
                                .frame(width: 30, height: 30)
                            Image(systemName: "checkmark")
                                .font(.system(size: 14))
                                .foregroundColor(method == "None" ? Color.white : Color.black.opacity(0.04))
                        }
                    }
                }.padding()
            }
            
            Spacer()
        }
    }
}
