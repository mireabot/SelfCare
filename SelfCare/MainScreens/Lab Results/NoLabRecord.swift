//
//  NoLabRecord.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 02.08.2021.
//

import Foundation
import SwiftUI

struct NoLabRecord : View {
    var body: some View {
        VStack {
            
            Spacer()
            
            Image("NoRecord")
            
            VStack(spacing: 10){
                Text("You don't have any record now")
                    .font(Font.custom("Poppins-SemiBold", size: 20))
                    .foregroundColor(Color("primary1"))
                Text("You can add your lab results")
                    .font(Font.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color("primary1"))
            }.padding()
            
            Spacer()
            
            
            Button(action: {
                
            }) {
                ButtonFilled(buttonLabel: "Add")
            }
            
            
        }.padding()
    }
}



struct NoLabRecord_Previews: PreviewProvider {
    static var previews: some View {
        NoLabRecord()
    }
}
