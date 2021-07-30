//
//  InternetConnection.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 28.07.2021.
//

import Foundation
import SwiftUI


struct NoConnection : View {
    var body: some View {
        VStack{
            Spacer()
            VStack(spacing: 10){
                Image("Splash1")
                    .resizable()
                    .frame(width: 327, height: 280)
                VStack(spacing: 5){
                    Text("Opps! No Internet Connection")
                        .font(Font.custom("Poppins-SemiBold", size: 20))
                        .foregroundColor(Color("primary1"))
                    Text("Tap the screen to try again")
                        .font(Font.custom("Poppins-Regular", size: 16))
                        .foregroundColor(Color("primary4"))
                }
            }
            Spacer()
        }
    }
}


struct Connect_Previews: PreviewProvider {
    static var previews: some View {
        NoConnection()
    }
}
