//
//  NoRecords.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 02.08.2021.
//

import Foundation
import SwiftUI


struct NoMedicalRecord : View {
    @State var add = false
    @StateObject var Medcine = MedcineOperationModel()
    @AppStorage("firstMedcine") var medcine = false
    @State var userID = ""
    var body: some View {
        ZStack {
            if self.medcine == false {
                VStack {
                    
                    Spacer()
                    
                    Image("NoRecord")
                    
                    VStack(spacing: 10){
                        Text("You don't have any record now")
                            .font(Font.custom("Poppins-SemiBold", size: 20))
                            .foregroundColor(Color("primary1"))
                        Text("You can add your medcine you need to buy")
                            .font(Font.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color("primary1"))
                    }.padding()
                    
                    Spacer()
                    
                    
                    Button(action: {
                        self.add.toggle()
                    }) {
                        ButtonFilled(buttonLabel: "Add")
                    }
                    
                    
                }
                .padding()
                .opacity(self.add == true ? 0 : 1)
            MedicalOnboarding()
                .opacity(self.add == true ? 1 : 0)
            }
            
            if self.medcine == true {
                        VStack {
                            ScrollView(.vertical, showsIndicators: false){
                                VStack(spacing: 20){
                                    ForEach(Medcine.medcines){ medcines in
                                        if medcines.userID == userID {
                                        MedcineCard_View(medcine: medcines)
                                        }
                                    }
                                }
                            }
                            Spacer()
                            
                            Button(action: {
                                self.add.toggle()
                            }){
                                ButtonFilled(buttonLabel: "Add")
                            }
                        }.fullScreenCover(isPresented: $add){
                            AddMedcine()
                        }
            }
        }
        .onAppear{
            Medcine.fetchMedcine()
            guard let retrive1  = UserDefaults.standard.string(forKey: "UserID") else { return }
            self.userID = retrive1
        }
    }
}



struct NoRecord_Previews: PreviewProvider {
    static var previews: some View {
        NoMedicalRecord()
    }
}
