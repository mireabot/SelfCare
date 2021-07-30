//
//  HeaderModel.swift
//  SelfCare
//
//  Created by Mikhail Kolkov  on 30.07.2021.
//

import Foundation
import SwiftUI


struct Header : View {
    var text : String
    var color : String
    var size : CGFloat
    var font : String
    var body: some View {
        HStack {
            Text(text)
                .foregroundColor(Color("\(color)"))
                .font(Font.custom("\(font)", size: size))
            Spacer()
        }.padding()
    }
}
