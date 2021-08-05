//
//  Chart.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI
import SwiftUICharts


struct StaticsScreen : View {
    var body: some View {
        VStack {
            HStack {
                Text("Statics")
                    .font(Font.custom("Poppins-SemiBold", size: 24))
                    .foregroundColor(Color("primary1"))
                
                Spacer()
            }.padding()
            
            LineView(data: [8,23,54,32,12,37,7,23,43], title: "Covid-19", legend: "Your feelings").padding() // legend is optional, use optional .padding()

            Spacer()
        }
    }
}


struct Statics_Previews: PreviewProvider {
    static var previews: some View {
        StaticsScreen()
    }
}


