//
//  AddMedcine.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 04.08.2021.
//

import Foundation
import SwiftUI
import PopupView

struct AddMedcine : View {
    @Environment(\.presentationMode) var present
    @State var name = ""
    @StateObject var Medcine = MedcineOperationModel()
    @State var category = ""
    @State var reminder = "OFF"
    var body: some View {
        VStack(spacing: 20) {
            
            HStack {
                
                Spacer()
                Button(action: {
                    self.present.wrappedValue.dismiss()
                }){
                    Text("Cancel")
                        .font(Font.custom("Poppins-SemiBold", size: 14))
                        .foregroundColor(Color("primary1"))
                }
            }.padding()
//            Spacer()
            HStack {
                Text("Add medcine to list")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color("primary1"))
                
                Spacer()
            }.padding()
            
            Header(text: "Name of medcine", color: "primary4", size: 14, font: "Poppins-Regular")
            HStack {
                Text("Medcine")
                    .font(Font.custom("Poppins-SemiBold", size: 14))
                    .foregroundColor(Color("primary1"))
                Spacer()
            }.padding()
            
            Header(text: "Category", color: "primary4", size: 14, font: "Poppins-Regular")
            HStack {
                Text("Medcine")
                    .font(Font.custom("Poppins-SemiBold", size: 14))
                    .foregroundColor(Color("primary1"))
                Spacer()
            }.padding()
            
            
            Button(action: {
                self.present.wrappedValue.dismiss()
                Medcine.addMedcine(medcineName: name, category: category, reminder: reminder)
            }){
                if self.name != "" && self.category != "" {
                    ButtonFilled(buttonLabel: "Add")
                }
                else {
                    ButtonNonFilled(buttonLabel: "Add")
                }
            }
            .disabled(self.name != "" && self.category != "" ? false : true)
            .padding(.top, 40)
            
            HStack {
                Text("Set a reminder in 2 hours")
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("primary3"))
                Spacer()
                Button(action: {
                    self.reminder = "ON"
                }){
                    Circle()
                        .fill(self.reminder == "ON" ? Color("primary1") : Color.black.opacity(0.08))
                        .frame(width: 20, height: 20)
                }
            }.padding()
            
            Text("You can see a reminder to buy in notification hub")
                .font(Font.custom("Poppins-Regular", size: 14))
                .foregroundColor(Color("primary1"))
            
            Spacer()
        }
    }
}

struct AddMedcine_Previews: PreviewProvider {
    static var previews: some View {
        AddMedcine()
    }
}

