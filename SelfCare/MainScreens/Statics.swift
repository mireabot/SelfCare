//
//  Chart.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI


struct StaticsScreen : View {
    var body: some View {
        VStack {
            HStack {
                Text("Statics")
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(Color("primary1"))
                
                Spacer()
            }.padding()
            Spacer()
        }
    }
}


struct Statics_Previews: PreviewProvider {
    static var previews: some View {
        StaticsScreen()
    }
}


