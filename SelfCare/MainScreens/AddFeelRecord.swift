//
//  AddFeelRecord.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 10.08.2021.
//

import Foundation
import SwiftUI


struct AddFeelRecord : View {
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack {
            HStack {
                Text("How do you feel")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color("primary1"))
                
                Spacer()
                
                Button(action: {
                    self.present.wrappedValue.dismiss()
                }) {
                    Text("Cancel")
                        .font(Font.custom("Poppins-Medium", size: 16))
                        .foregroundColor(Color("primary1"))
                }
            }.padding()
            
            
            HStack(spacing: 15){
                VStack(spacing: 5){
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 50, height: 50)
                            .shadow(color: Color.black.opacity(0.08), radius: 10, x: 5, y: 5)
                        Image("Good")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                    
                    Text("Good")
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("primary1"))
                }
                VStack(spacing: 5){
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 50, height: 50)
                            .shadow(color: Color.black.opacity(0.08), radius: 10, x: 5, y: 5)
                        Image("Good")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                    
                    Text("Not bad")
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("primary1"))
                }
                VStack(spacing: 5){
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 50, height: 50)
                            .shadow(color: Color.black.opacity(0.08), radius: 10, x: 5, y: 5)
                        Image("Good")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                    
                    Text("Badly")
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("primary1"))
                }
                VStack(spacing: 5){
                    ZStack {
                        Circle()
                            .fill(Color.white)
                            .frame(width: 50, height: 50)
                            .shadow(color: Color.black.opacity(0.08), radius: 10, x: 5, y: 5)
                        Image("Good")
                            .resizable()
                            .frame(width: 35, height: 35)
                    }
                    
                    Text("Very sick")
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("primary1"))
                }
            }
            Spacer()
        }
    }
}


struct AddFeelRecord_Previews: PreviewProvider {
    static var previews: some View {
        AddFeelRecord()
    }
}
