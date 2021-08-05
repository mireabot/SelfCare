//
//  Onboarding.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 03.08.2021.
//

import Foundation
import SwiftUI


struct MedicalOnboarding : View {
    @State var next = false
    var body: some View {
        ZStack {
                VStack(spacing: 20) {
                    HStack {
                        VStack(alignment: .leading, spacing: 5){
                            Text("Welcome to virtual \nmedcine storage")
                                .font(Font.custom("Poppins-SemiBold", size: 20))
                                .foregroundColor(Color("primary1"))
                            Text("Here you can")
                                .font(Font.custom("Poppins-Regular", size: 12))
                                .foregroundColor(Color("primary4"))
                        }
                        Spacer()
                    }.padding()
                    
                    HStack {
                        VStack(spacing: 10){
                            HStack {
                                Circle()
                                    .fill(Color("primary2"))
                                    .frame(width: 20, height: 20)
                                Text("Add medcine to shop list")
                                    .font(Font.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(Color("primary1"))
                                Spacer()
                            }
                            HStack {
                                Circle()
                                    .fill(Color("primary2"))
                                    .frame(width: 20, height: 20)
                                Text("Set a reminder to buy")
                                    .font(Font.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(Color("primary1"))
                                Spacer()
                            }
                            HStack {
                                Circle()
                                    .fill(Color("primary2"))
                                    .frame(width: 20, height: 20)
                                Text("Manage by groups")
                                    .font(Font.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(Color("primary1"))
                                Spacer()
                            }
                            HStack {
                                Circle()
                                    .fill(Color("primary2"))
                                    .frame(width: 20, height: 20)
                                Text("Share with family")
                                    .font(Font.custom("Poppins-Regular", size: 16))
                                    .foregroundColor(Color("primary1"))
                                Spacer()
                            }
                        }
                        Spacer()
                    }.padding()
                    
                    Button(action: {
                        self.next = true
                    }){
                        ButtonFilled(buttonLabel: "Get Started")
                    }
                }
                .opacity(self.next == true ? 0 : 1)
                
                AddFirstMedcine()
                    .opacity(self.next == true ? 1 : 0)
        }
    }
}



struct MedicalOnboarding_Previews: PreviewProvider {
    static var previews: some View {
        AddFirstMedcine()
    }
}



struct AddFirstMedcine : View {
    @AppStorage("firstMedcine") var medcine = false
    @StateObject var FirebaseService = MedcineOperationModel()
    @State var name = ""
    @State var category = ""
    @State var reminder = ""
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Add your first medcine")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color("primary1"))
                
                Spacer()
            }.padding()
            
            Header(text: "Name of medcine", color: "primary4", size: 14, font: "Poppins-Regular")
            HStack {
                TextField("Name", text: $name)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 46)
                Spacer()
            }.padding()
            
            Header(text: "Category", color: "primary4", size: 14, font: "Poppins-Regular")
            HStack {
                TextField("Category", text: $category)
                    .frame(width: UIScreen.main.bounds.width - 30, height: 46)
                Spacer()
            }.padding()
            
            
            Button(action: {
                self.medcine = true
                FirebaseService.addMedcine(medcineName: name, category: category, reminder: reminder)
            }){
                ButtonFilled(buttonLabel: "Continue")
            }.padding(.top, 40)
            
            HStack {
                Text("Set a reminder in 2 hours")
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("primary3"))
                Spacer()
                Button(action: {
                    self.medcine = false
                    self.reminder = "ON"
                }){
                    Circle()
                        .fill(Color.black.opacity(0.05))
                        .frame(width: 20, height: 20)
                }
            }.padding()
            
            Text("You can see a reminder to buy in notification hub")
                .font(Font.custom("Poppins-Regular", size: 14))
                .foregroundColor(Color("primary1"))
        }
    }
}
