//
//  AddRecord.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 02.08.2021.
//

import Foundation
import SwiftUI

struct NewCovidRecord : View {
    @State var alert = false
    @State var start = false
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 20){
                Text("I'am ...")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color("primary1"))
                Button(action: {
                    self.start.toggle()
                }){
                    ButtonFilled(buttonLabel: "I get a vaccine")
                }
                Button(action: {
                    self.alert.toggle()
                }){
                    ButtonNonFilled(buttonLabel: "I got sick with coronavirus")
                }
            }
            Spacer()
            HStack{
                Text("Attention!")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(self.alert == true ? Color("error") : Color("White"))
                Spacer()
            }.padding()
            
            HStack {
                Text("You should contact to local health authorities and follow their instructions")
                    .font(Font.custom("Poppins-Medium", size: 16))
                    .foregroundColor(self.alert == true ? Color("error") : Color("White"))
                Spacer()
            }.padding()
        }
        .fullScreenCover(isPresented: $start){
            AddVaccine()
        }
    }
}


struct NewCovidRecord_Previews: PreviewProvider {
    static var previews: some View {
        AddVaccine()
    }
}

struct AddVaccine : View {
    @Environment(\.presentationMode) var present
    var body: some View {
        VStack {
            HStack{
                Text("Tell about vaccine")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color("primary1"))
                
                Spacer()
                
                Button(action: {
                    self.present.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                        .font(.system(size: 16))
                        .foregroundColor(Color("primary1"))
                }
            }.padding()
            Spacer()
            Header(text: "Vaccine name", color: "primary3", size: 16, font: "Poppins-Medium")
            
            HStack {
                Text("Pfizer")
                    .font(Font.custom("Poppins-SemiBold", size: 16))
                    .foregroundColor(Color("primary1"))
                Spacer()
            }.padding()
            Header(text: "First stage", color: "primary3", size: 16, font: "Poppins-Medium")
            HStack {
                Text("07/10/2021")
                    .font(Font.custom("Poppins-SemiBold", size: 16))
                    .foregroundColor(Color("primary1"))
                Spacer()
            }.padding()
            Header(text: "Second stage", color: "primary3", size: 16, font: "Poppins-Medium")
            HStack {
                Text("07/31/2021")
                    .font(Font.custom("Poppins-SemiBold", size: 16))
                    .foregroundColor(Color("primary1"))
                Spacer()
            }.padding()
            Spacer()
            
            Button(action: {
                
            }){
                ButtonFilled(buttonLabel: "Continue")
            }
        }
    }
}
